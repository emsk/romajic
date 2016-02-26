require 'yaml'

module RomajiCop

  # Configurations for {Cop}
  class Config
    attr_reader :target_kinds, :exclusion_words, :target_words

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
      @target_kinds    = configs['target_kinds'] || []
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

    # Check if a kind is the target kind
    #
    # @param kind [String] A kind, e.g. ident, comment
    # @return [Boolean] True if a kind is the target kind
    def target_kind?(kind)
      target_kinds.include?(kind)
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
