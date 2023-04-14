require_relative "constants"

def display_notes()
  notes = Dir.glob("#{NOTES_DIRECTORY}/*")
  print "notes: "
  notes.each do |note|
    print "#{note.gsub! "#{NOTES_DIRECTORY}/", ""}; "
  end
end

def display_menu()
  puts "\n========== MySecret =========="
  puts "[1] Create new note"
  puts "[2] Read a note"
  puts "[3] Edit a note"
  puts "[4] Delete a note"
  puts "[5] Encrypt an existing note"
  puts "[6] Decrypt an existing note"
  puts "[7] Change secret key"
  puts "[8] Change text editor"
  puts "[0] Exit"
  print "> "
end

def display_text_editor()
  puts "================================="
  puts "Select your favorite text editor:"
  puts "[0] Nano"
  puts "[1] VI"
  puts "[2] VIM"
  puts "[3] NeoVim"
  puts "[4] Emacs"
  puts "[5] Notepad"
  print "> "
end
