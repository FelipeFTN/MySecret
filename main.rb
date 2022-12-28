require_relative "handler/system"
require_relative "handler/note"

# List notes
notes = Dir.glob("notes/*")
print "notes: "
notes.each do |note|
  print "#{note.gsub! "notes/", ""}; "
end

# Display menu options
valid_options = [1, 2, 3, 4, 5, 6]
puts "\n========== MySecret =========="
puts "[1] Create new note"
puts "[2] Read a note"
puts "[3] Edit a note"
puts "[4] Encrypt an existing note"
puts "[5] Decrypt an existing note"
puts "[6] Change secret key"

print "> "
option = gets.chomp.to_i

is_valid = valid_options.include? option
if is_valid == false
  puts "error: invalid option" 
  return
end

# Select file & secret key
print "file name: "
file_name = gets.chomp
file_path = "notes/#{file_name}"

print "secret key: "
secret_key = gets.chomp

# Handle options
if option == 1
  write_note(file_path, secret_key)
elsif option == 2
  read_note(file_path, secret_key)
elsif option == 3
  edit_note(file_path, secret_key)
elsif option == 4
  encrypt_note(file_path, secret_key)
elsif option == 5
  decrypt_note(file_path, secret_key)
elsif option == 6
  print "new secret_key: "
  new_secret_key = gets.chomp
  change_secret(file_path, secret_key, new_secret_key)
end
