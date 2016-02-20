require 'thor'
require 'romaji_cop/cop'

module RomajiCop
  class CLI < Thor
    desc 'search', 'Search romaji'
    option :config
    def search
      if options[:config]
        config_file_path = File.expand_path(options[:config])
      else
        config_file_path = File.expand_path('../../../default.yml', __FILE__)
      end

      cop = Cop.new(config_file_path)
      cop.search
    end

    desc '-v, --version', 'Print the version'
    map %w(-v --version) => :version
    def version
      puts "romaji_cop #{RomajiCop::VERSION}"
    end
  end

  CLI.start
end
