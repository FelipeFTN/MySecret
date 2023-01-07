require_relative "constants"
require_relative "file"

def get_text_editor()
  text_editors = ["nano", "vim", "nvim", "vi", "emacs"]
  text_editor_path = "#{MYSECRET_DIRECTORY}/editor.config"

  if File.file?(text_editor_path)
    editor = read_file(text_editor_path).chomp
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
  print "> "
  text_editor = gets.chomp.to_i
  
  write_file(text_editor_path, text_editors[text_editor])

  return text_editors[text_editor]
end

def execute(command, pause=false)
  system(command)

  if pause
    print "\nPress enter to proceed"
    gets
  end
end
