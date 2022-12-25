require_relative "file"

def get_path()
  print "file number: "
  index = gets.chomp
  directory = "./notes/#{index}.txt"
  return directory
end

def get_text_editor()
  text_editors = ["vi", "vim", "nvim", "nano"]

  if File.file?("editor.config")
    editor = read_file("editor.config").chomp
    if text_editors.include?(editor)
      return editor
    end
  end

  puts "================================="
  puts "Select your favorite text editor:"
  puts "[0] VI" 
  puts "[1] VIM" 
  puts "[2] NeoVim" 
  puts "[3] Nano" 
  print "> "
  text_editor = gets.chomp.to_i
  
  write_file("editor.config", text_editors[text_editor])

  return text_editors[text_editor]
end

def execute(command, pause=false)
  system(command)

  if pause
    print "\nPress enter to proceed"
    gets
  end
end
