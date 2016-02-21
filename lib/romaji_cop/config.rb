require 'yaml'

module RomajiCop

  # Configurations for {Cop}
  class Config
    attr_reader :rule_names, :exclusion_words, :target_words

    # Initialize a new Config object
    #
    # @param config_file_path [String] Path of the configuration file
    def initialize(config_file_path)
      configs = YAML.load_file(config_file_path)

      if configs['root_dir']
        @root_dir = File.expand_path(configs['root_dir'], File.dirname(config_file_path))
      else
        @root_dir = File.expand_path('.')
      end

      @extensions      = configs['extensions']
      @rule_names      = configs['rule_names'] || []
      @exclusion_words = configs['exclusion_words'] || []
      @target_words    = configs['target_words'] || []
    end

    # Get the glob pattern of the search target files
    #
    # @return [String] Glob pattern
    def target_file_pattern
      pattern = "#{@root_dir}/**/*"
      pattern += ".{#{@extensions.join(',')}}" unless @extensions.nil?
      pattern
    end

    # Check if a name is the target rule name
    #
    # @param name [String] A name, e.g. Identifier, COMMENT
    # @return [Boolean] True if a name is the target rule name
    def target_name?(name)
      rule_names.include?(name)
    end

    # Check if a word is the exclusion word
    #
    # @param word [String] A word, e.g. class, const
    # @return [Boolean] True if a word is the exclusion word
    def exclusion_word?(word)
      exclusion_words.include?(word)
    end
  end
end
