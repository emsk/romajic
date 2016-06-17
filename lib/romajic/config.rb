require 'yaml'
require 'romajify/converter'
require 'romajic/error'

module Romajic

  # Configurations for {Cop}
  class Config
    HEPBURN_CONVERTERS = %i(hepburn modified_hepburn traditional_hepburn).freeze
    ALLOWED_CONVERTERS = %i(hepburn nihon kunrei).freeze

    attr_reader :target_words, :exclude_words, :distance

    # Initialize a new Config object
    #
    # @param options [Hash] Initialize options
    # @option options [String] :word Target romaji
    # @option options [String] :exclude_word Word to exclude
    # @option options [String] :config Path of the configuration file
    # @option options [String] :dir Path of target directory
    # @option options [String] :extensions Comma-separated target extensions
    # @option options [Integer] :distance Levenshtein distance
    # @option options [String, Symbol] :converter Romaji converter
    def initialize(options)
      @options = Marshal.load(Marshal.dump(options))
      set_configs
      set_converter
      set_target_words
      set_exclude_words
      set_dir
      set_extensions
      set_distance
    end

    # Get the glob pattern of the search target files
    #
    # @return [String] Glob pattern
    def target_file_pattern
      pattern = "#{@dir}/**/*"
      pattern += ".{#{@extensions.join(',')}}" unless @extensions.nil?
      pattern
    end

    # Check if a word is the excluded word
    #
    # @param word [String] A word, e.g. class, const
    # @return [Boolean] True if a word is the excluded word
    def exclude_word?(word)
      exclude_words.include?(word)
    end

    private

    def set_configs
      if @options[:config].nil?
        @configs = {}
      else
        configs = YAML.load_file(@options[:config])
        @configs = Hash[configs.map { |k, v| [k.to_sym, v] }]
      end
    rescue Errno::ENOENT => e
      raise Romajic::Error, e.message
    end

    def set_converter
      @converter = (@options[:converter] || @configs[:converter] || :hepburn).to_sym
      set_converter_options
      @converter = :hepburn if hepburn_converter?

      raise Romajic::Error, "No such converter - #{@converter}" unless allowed_converter?
    end

    def set_converter_options
      @converter_options = @converter == :traditional_hepburn ? { traditional: true } : {}
    end

    def hepburn_converter?
      HEPBURN_CONVERTERS.include?(@converter)
    end

    def allowed_converter?
      ALLOWED_CONVERTERS.include?(@converter)
    end

    def set_target_words
      if @options[:word]
        @target_words = [@options[:word]]
      else
        @target_words = @configs[:target_words] || []
      end

      @target_words.map! do |word|
        word.ascii_only? ? word : Romajify::Converter.public_send(@converter, word, @converter_options)
      end
    end

    def set_exclude_words
      if @options[:exclude_word]
        @exclude_words = [@options[:exclude_word]]
      else
        @exclude_words = @configs[:exclude_words] || []
      end
    end

    def set_dir
      if @options[:dir]
        @dir = File.expand_path(@options[:dir])
      elsif @configs[:dir]
        @dir = File.expand_path(@configs[:dir], File.dirname(@options[:config]))
      else
        @dir = File.expand_path('.')
      end
    end

    def set_extensions
      if @options[:extensions]
        @extensions = @options[:extensions].split(',')
      else
        @extensions = @configs[:extensions]
      end
    end

    def set_distance
      @distance = @options[:distance] || @configs[:distance] || 3
    end
  end
end
