require_relative "constants"
require_relative "file"

def get_text_editor()
  text_editors = ["nano", "vi", "vim", "nvim", "emacs", "notepad"]

  if File.file?(EDITOR_PATH)
    editor = read_file(EDITOR_PATH).chomp
    if text_editors.include?(editor)
      return editor
    end
  end

  puts "================================="
  puts "Select your favorite text editor:"
  puts "[0] Nano" 
  puts "[1] VI" 
  puts "[2] VIM" 
  puts "[3] NeoVim" 
  puts "[4] Emacs"
  puts "[5] Windows notepad"
  print "> "
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
