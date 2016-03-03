require 'coderay'
require 'levenshtein'
require 'romaji_cop/config'

module RomajiCop

  # Search logic class of {RomajiCop}
  class Cop
    TARGET_KINDS = {
      css:  %w(class comment id tag),
      java: %w(class comment content ident)
    }

    # Initialize a new Cop object
    #
    # @param options [Hash] Initialize options
    # @option options [String] :word Target romaji
    # @option options [String] :exclude_word Word to exclude
    # @option options [String] :config Path of the configuration file
    # @option options [String] :dir Path of target directory
    # @option options [String] :extensions Comma-separated target extensions
    def initialize(options)
      @config = Config.new(options)
    end

    # Search romaji in the source files
    def search
      Dir.glob(@config.target_file_pattern, File::FNM_CASEFOLD).each do |file_path|
        next if FileTest.directory?(file_path)

        extension = File.extname(file_path).sub(/^./, '').downcase

        next if extension.empty?

        @target_kinds = TARGET_KINDS[extension.to_sym] || []
        tokens = CodeRay.scan(File.read(file_path), extension.to_sym).tokens
        search_in_tokens(tokens, file_path)
      end

      nil
    end

    private

    def search_in_tokens(tokens, file_path)
      line_number = 1

      tokens.each_slice(2) do |token|
        text = token[0]
        kind = token[1]
        line_number += text.count("\n") if text.is_a?(String)

        next unless target_kind?(kind.to_s)
        next if @config.exclusion_word?(text.to_s)

        current_word = strip_text(text.to_s)

        next if current_word.empty?

        search_in_words(current_word, file_path, line_number)
      end
    end

    def target_kind?(kind)
      @target_kinds.include?(kind)
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
