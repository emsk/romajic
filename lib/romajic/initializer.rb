module Romajic

  # Initializer for {Romajic}
  class Initializer
    TEMPLATE_CONFIG_FILE = '.romajic.yml'

    # Copy a configuration file from template to working directory
    def self.copy_template
      to = File.expand_path(TEMPLATE_CONFIG_FILE)
      return puts Rainbow("exist #{to}").yellow if FileTest.exist?(to)

      from = File.expand_path("../initializer/#{TEMPLATE_CONFIG_FILE}", __FILE__)
      FileUtils.copy(from, to)
      puts Rainbow("create #{to}").green
    end
  end
end
