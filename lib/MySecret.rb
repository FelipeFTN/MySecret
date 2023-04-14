# frozen_string_literal: true

require_relative "MySecret/handler/constants"
require_relative "MySecret/version"
require_relative "MySecret/handler/display"
require_relative "MySecret/handler/system"
require_relative "MySecret/handler/main"

module MySecret
  class Error < StandardError; end

  # Create MySecret folder
  Dir.mkdir(CONFIG_DIRECTORY) unless File.exist?(CONFIG_DIRECTORY)
  Dir.mkdir(MYSECRET_DIRECTORY) unless File.exist?(MYSECRET_DIRECTORY)
  Dir.mkdir(NOTES_DIRECTORY) unless File.exist?(NOTES_DIRECTORY)

  while true
    # List notes
    display_notes()

    # Display menu options
    option = options_menu()

    # Input Validation
    validate_options(option) ? nil : return

    # Handle options
    handler(option) 

    # Clear terminal
    puts `clear`
  end
end
