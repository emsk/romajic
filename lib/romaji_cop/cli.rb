require 'thor'
require 'romaji_cop/cop'

module RomajiCop

  # Command-line interface of {RomajiCop}
  class CLI < Thor
    desc 'search WORD', 'Search romaji'
    option :config, type: :string, banner: 'PATH OF THE CONFIGURATION FILE'
    option :dir, type: :string, banner: 'PATH OF TARGET DIRECTORY'
    option :extensions, type: :string, banner: 'COMMA-SEPARATED TARGET EXTENSIONS'

    # Search romaji in the source files
    def search(word = nil)
      cop_options = {}

      cop_options[:word] = word if word

      if options[:config]
        cop_options[:config] = File.expand_path(options[:config])
      else
        cop_options[:config] = File.expand_path('../../../default.yml', __FILE__)
      end

      cop_options[:dir] = options[:dir] if options[:dir]
      cop_options[:extensions] = options[:extensions] if options[:extensions]

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
