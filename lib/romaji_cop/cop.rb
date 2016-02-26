require 'coderay'
require 'levenshtein'
require 'romaji_cop/config'
require 'romaji_cop/lexer/JavaLexer'

module RomajiCop

  # Search logic class of {RomajiCop}
  class Cop

    # Initialize a new Cop object
    #
    # @param config_file_path [String] Path of the configuration file
    def initialize(config_file_path)
      @config = Config.new(config_file_path)
    end

    # Search romaji in the source files
    def search
      Dir.glob(@config.target_file_pattern).each do |file_path|
        next if FileTest.directory?(file_path)

        extension = File.extname(file_path).sub(/^./, '')

        if extension == 'java'
          input = ANTLR3::FileStream.new(file_path)
          tokens = Java::Lexer.new(input).to_a
          search_in_java_tokens(tokens, file_path)
        else
          tokens = CodeRay.scan(File.read(file_path), extension.to_sym).tokens
          search_in_tokens(tokens, file_path)
        end
      end

      nil
    end

    private

    def search_in_java_tokens(tokens, file_path)
      tokens.each do |token|
        next unless @config.target_name?(token.name)
        next if @config.exclusion_word?(token.text)

        current_word = strip_token_text(token)

        next if current_word.empty?

        search_in_words(current_word, file_path, token.line)
      end
    end

    def search_in_tokens(tokens, file_path)
      line_number = 1

      tokens.each_slice(2) do |token|
        text = token[0]
        name = token[1]
        line_number += text.count("\n") if text.is_a?(String)

        next unless @config.target_name?(name.to_s)
        next if @config.exclusion_word?(text.to_s)

        current_word = strip_text(text.to_s)

        next if current_word.empty?

        search_in_words(current_word, file_path, line_number)
      end
    end

    def strip_token_text(token)
      token.text
        .gsub(/\/|\\|\"|\*/, '')
        .gsub(/\s+/, ' ')
        .strip
    end

    def strip_text(text)
      text.gsub(/\/|\\|\"|\*/, '')
        .gsub(/\s+/, ' ')
        .strip
    end

    def search_in_words(current_word, file_path, line)
      @config.target_words.each do |target_word|
        target_word.downcase!
        next unless similar?(target_word, current_word.downcase)
        puts "#{current_word} -> #{target_word} @ #{file_path}:#{line}"
      end
    end

    def similar?(target, current)
      distance = Levenshtein.distance(target, current)
      1 <= distance && distance <= 3
    end
  end
end
