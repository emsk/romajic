require 'yaml'

module RomajiCop
  class Config
    attr_reader :rule_names, :exclusion_words, :target_words

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

    def target_file_pattern
      pattern = "#{@root_dir}/**/*"
      pattern += ".{#{@extensions.join(',')}}" unless @extensions.nil?
      pattern
    end

    def target_name?(name)
      rule_names.include?(name)
    end

    def exclusion_word?(word)
      exclusion_words.include?(word)
    end
  end
end
