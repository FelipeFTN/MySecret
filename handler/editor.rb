def get_text_editor()
  text_editors = ["vi", "vim", "nvim", "nano"]

  puts "Select your favorite text editor:"
  puts "[0] VI" 
  puts "[1] VIM" 
  puts "[2] NeoVim" 
  puts "[3] Nano" 
  print "> "
  text_editor = gets.chomp.to_i

  return text_editors[text_editor]
end
