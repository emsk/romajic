require 'yaml'

module RomajiCop

  # Configurations for {Cop}
  class Config
    attr_reader :exclusion_words, :target_words

    # Initialize a new Config object
    #
    # @param options [Hash] Initialize options
    # @option options [String] :config Path of the configuration file
    # @option options [String] :extensions Comma-separated target extensions
    def initialize(options)
      configs = get_configs_from_file(options[:config])

      if configs[:root_dir]
        @root_dir = File.expand_path(configs[:root_dir], File.dirname(options[:config]))
      else
        @root_dir = File.expand_path('.')
      end

      if options[:extensions]
        @extensions = options[:extensions].split(',')
      else
        @extensions = configs[:extensions]
      end

      @exclusion_words = configs[:exclusion_words] || []
      @target_words    = configs[:target_words] || []
    end

    # Get the glob pattern of the search target files
    #
    # @return [String] Glob pattern
    def target_file_pattern
      pattern = "#{@root_dir}/**/*"
      pattern += ".{#{@extensions.join(',')}}" unless @extensions.nil?
      pattern
    end

    # Check if a word is the exclusion word
    #
    # @param word [String] A word, e.g. class, const
    # @return [Boolean] True if a word is the exclusion word
    def exclusion_word?(word)
      exclusion_words.include?(word)
    end

    private

    def get_configs_from_file(config_file_path)
      configs = YAML.load_file(config_file_path)
      Hash[configs.map { |k, v| [k.to_sym, v] }]
    end
  end
end
