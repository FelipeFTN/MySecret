#!/usr/bin/ruby

require_relative "handler/constants"
require_relative "handler/display"
require_relative "handler/system"
require_relative "handler/main"

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
