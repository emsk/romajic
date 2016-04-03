require 'thor'
require 'romajic/cop'

# Automatic romaji spelling checker
module Romajic

  # Command-line interface of {Romajic}
  class CLI < Thor
    desc 'search WORD', 'Search romaji'
    option :exclude_word, type: :string, aliases: '-e', banner: 'WORD TO EXCLUDE'
    option :config, type: :string, aliases: '-c', banner: 'PATH OF THE CONFIGURATION FILE'
    option :dir, type: :string, aliases: '-d', banner: 'PATH OF TARGET DIRECTORY'
    option :extensions, type: :string, aliases: '-E', banner: 'COMMA-SEPARATED TARGET EXTENSIONS'
    option :distance, type: :numeric, aliases: '-D', banner: 'LEVENSHTEIN DISTANCE'
    option :converter, type: :string, aliases: '-C', banner: 'ROMAJI CONVERTER, e.g. hepburn, modified_hepburn, traditional_hepburn, nihon, or kunrei'

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
        default_config_file = File.expand_path('.romajic.yml')
        cop_options[:config] = default_config_file if FileTest.exist?(default_config_file)
      end

      cop_options[:dir] = options[:dir] if options[:dir]
      cop_options[:extensions] = options[:extensions] if options[:extensions]
      cop_options[:distance] = options[:distance] if options[:distance]
      cop_options[:converter] = options[:converter] if options[:converter]

      cop = Cop.new(cop_options)
      cop.search
    end

    desc '-v, --version', 'Print the version'
    map %w(-v --version) => :version

    # Print the version
    def version
      puts "romajic #{Romajic::VERSION}"
    end
  end

  CLI.start
end
