require_relative "handler/cryptography"
require_relative "handler/system"
require_relative "handler/file"
require_relative "handler/note"

while true
  # List notes
  notes = Dir.glob("notes/*")
  print "notes: "
  notes.each do |note|
    print "#{note.gsub! "notes/", ""}; "
  end

  # Display menu options
  valid_options = [0, 1, 2, 3, 4, 5, 6, 7]
  puts "\n========== MySecret =========="
  puts "[1] Create new note"
  puts "[2] Read a note"
  puts "[3] Edit a note"
  puts "[4] Delete a note"
  puts "[5] Encrypt an existing note"
  puts "[6] Decrypt an existing note"
  puts "[7] Change secret key"
  puts "[0] Exit"
  print "> "
  option = gets.chomp.to_i

  # Input Validation
  is_valid = valid_options.include? option
  if is_valid == false
    puts "error: invalid option" 
    return
  end
  if option == 0
    return
  end

  # Handle options
  if option == 1
    # Get file name & secret key
    file_path = get_file()
    secret_key = get_secret_key()

    write_note(file_path, secret_key)
  elsif option == 2
    # Get file name & secret key
    file_path = get_file()
    secret_key = get_secret_key()

    read_note(file_path, secret_key)
  elsif option == 3
    # Get file name & secret key
    file_path = get_file()
    secret_key = get_secret_key()

    edit_note(file_path, secret_key)
  elsif option == 4
    # Get file name
    file_path = get_file()

    delete_note(file_path, secret_key)
  elsif option == 5
    # Get file name & secret key
    file_path = get_file()
    secret_key = get_secret_key()

    encrypt_note(file_path, secret_key)
  elsif option == 6
    # Get file name & secret key
    file_path = get_file()
    secret_key = get_secret_key()

    decrypt_note(file_path, secret_key)
  elsif option == 7
    # Get file name & secret key
    file_path = get_file()
    secret_key = get_secret_key()
    new_secret_key = get_secret_key("new secret key: ")

    change_secret(file_path, secret_key, new_secret_key)
  end
  puts `clear`
end
