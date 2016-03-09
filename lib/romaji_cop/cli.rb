require 'thor'
require 'romaji_cop/cop'

# Automatic romaji spelling checker
module RomajiCop

  # Command-line interface of {RomajiCop}
  class CLI < Thor
    desc 'search WORD', 'Search romaji'
    option :exclude_word, type: :string, aliases: '-e', banner: 'WORD TO EXCLUDE'
    option :config, type: :string, aliases: '-c', banner: 'PATH OF THE CONFIGURATION FILE'
    option :dir, type: :string, aliases: '-d', banner: 'PATH OF TARGET DIRECTORY'
    option :extensions, type: :string, aliases: '-E', banner: 'COMMA-SEPARATED TARGET EXTENSIONS'
    option :distance, type: :numeric, aliases: '-D', banner: 'LEVENSHTEIN DISTANCE'

    # Search romaji in the source files
    #
    # @param word [String] Target romaji
    def search(word = nil)
      cop_options = {}

      cop_options[:word] = word if word
      cop_options[:exclude_word] = options[:exclude_word] if options[:exclude_word]

      if options[:config]
        cop_options[:config] = File.expand_path(options[:config])
      else
        cop_options[:config] = File.expand_path('../../../default.yml', __FILE__)
      end

      cop_options[:dir] = options[:dir] if options[:dir]
      cop_options[:extensions] = options[:extensions] if options[:extensions]
      cop_options[:distance] = options[:distance] if options[:distance]

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
