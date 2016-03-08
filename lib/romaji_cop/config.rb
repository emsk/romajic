require 'yaml'

module RomajiCop

  # Configurations for {Cop}
  class Config
    attr_reader :target_words, :exclude_words, :distance

    # Initialize a new Config object
    #
    # @param options [Hash] Initialize options
    # @option options [String] :word Target romaji
    # @option options [String] :exclude_word Word to exclude
    # @option options [String] :config Path of the configuration file
    # @option options [String] :dir Path of target directory
    # @option options [String] :extensions Comma-separated target extensions
    # @option options [String] :distance Levenshtein distance
    def initialize(options)
      @options = Marshal.load(Marshal.dump(options))
      set_configs_from_file
      set_target_words
      set_exclude_words
      set_root_dir
      set_extensions
      set_distance
    end

    # Get the glob pattern of the search target files
    #
    # @return [String] Glob pattern
    def target_file_pattern
      pattern = "#{@root_dir}/**/*"
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

    def set_configs_from_file
      configs = YAML.load_file(@options[:config])
      @configs = Hash[configs.map { |k, v| [k.to_sym, v] }]
    end

    def set_target_words
      if @options[:word]
        @target_words = [@options[:word]]
      else
        @target_words = @configs[:target_words] || []
      end
    end

    def set_exclude_words
      if @options[:exclude_word]
        @exclude_words = [@options[:exclude_word]]
      else
        @exclude_words = @configs[:exclude_words] || []
      end
    end

    def set_root_dir
      if @options[:dir]
        @root_dir = File.expand_path(@options[:dir])
      elsif @configs[:root_dir]
        @root_dir = File.expand_path(@configs[:root_dir], File.dirname(@options[:config]))
      else
        @root_dir = File.expand_path('.')
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
