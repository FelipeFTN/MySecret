require_relative "constants"
require_relative "display"
require_relative "file"

def get_text_editor()
  text_editors = ["nano", "vi", "vim", "nvim", "emacs", "notepad"]
  if File.file?(EDITOR_PATH)
    editor = read_file(EDITOR_PATH).chomp
    if text_editors.include?(editor)
      return editor
    end
  end

  display_text_editor()
  text_editor = gets.chomp.to_i
  write_file(EDITOR_PATH, text_editors[text_editor])

  return text_editors[text_editor]
end

def execute(command, pause=false)
  system(command)

  if pause
    print "\nPress enter to proceed"
    gets
  end
end

def validate_options(option)
  valid_options = [0, 1, 2, 3, 4, 5, 6, 7, 8]
  is_valid = valid_options.include? option
  if !is_valid
    puts "error: invalid option" 
    return false
  elsif option == 0 
    return false
  end
  return true
end

def options_menu()
  display_menu()
  option = gets.chomp.to_i
end
