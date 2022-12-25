def get_path()
  print "file number: "
  index = gets.chomp
  directory = "./notes/#{index}.txt"
  return directory
end

def get_text_editor()
  text_editors = ["vi", "vim", "nvim", "nano"]

  puts "================================="
  puts "Select your favorite text editor:"
  puts "[0] VI" 
  puts "[1] VIM" 
  puts "[2] NeoVim" 
  puts "[3] Nano" 
  print "> "
  text_editor = gets.chomp.to_i

  return text_editors[text_editor]
end

def execute(command, pause=false)
  system(command)

  if pause
    print "Press enter to proceed"
    gets
  end
end
