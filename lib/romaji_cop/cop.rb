require 'levenshtein'
require 'romaji_cop/config'
require 'romaji_cop/lexer/JavaLexer'

module RomajiCop
  class Cop
    def initialize(config_file_path)
      @config = Config.new(config_file_path)
    end

    def search
      Dir.glob(@config.target_file_pattern).each do |file_path|
        next if FileTest.directory?(file_path)
        input = ANTLR3::FileStream.new(file_path)
        tokens = Java::Lexer.new(input).to_a # Only Java...
        search_in_tokens(tokens, file_path)
      end

      nil
    end

    private

    def search_in_tokens(tokens, file_path)
      tokens.each do |token|
        next unless @config.target_name?(token.name)
        next if @config.exclusion_word?(token.text)

        current_word = strip_token_text(token)

        next if current_word.empty?

        search_in_words(current_word, file_path, token.line)
      end
    end

    def strip_token_text(token)
      token.text
        .gsub(/\/|\\|\"|\*/, '')
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
