require 'thor'
require 'romaji_cop/cop'

module RomajiCop

  # Command-line interface of {RomajiCop}
  class CLI < Thor
    desc 'search', 'Search romaji'
    option :config, banner: 'PATH OF THE CONFIGURATION FILE'
    option :dir, banner: 'PATH OF TARGET DIRECTORY'
    option :extensions, banner: 'COMMA-SEPARATED TARGET EXTENSIONS'

    # Search romaji in the source files
    def search
      cop_options = {}

      if options[:config]
        cop_options[:config] = File.expand_path(options[:config])
      else
        cop_options[:config] = File.expand_path('../../../default.yml', __FILE__)
      end

      cop_options[:extensions] = options[:extensions] if options[:extensions]
      cop_options[:dir] = options[:dir] if options[:dir]

      cop = Cop.new(cop_options)
      cop.search
    end

    desc '-v, --version', 'Print the version'
    map %w(-v --version) => :version

    # Print the version
    def version
      puts "romaji_cop #{RomajiCop::VERSION}"
    end
  end

  CLI.start
end
