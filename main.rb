require_relative "handler/note"

valid_options = [1, 2, 3]

puts "==== MySecret ===="
puts "[1] Create new note"
puts "[2] Read a note"
puts "[3] Encrypt an existing note"

print "> "
option = gets.chomp.to_i

is_valid = valid_options.include? option
if is_valid == false
  puts "error: invalid option" 
  return
end

print "file name: "
file_name = gets.chomp
file_path = "notes/#{file_name}"

print "secret key: "
secret_key = gets.chomp

if option == 1
  write_note(file_path, secret_key)
elsif option == 2
  read_note(file_path, secret_key)
elsif option == 3
  encrypt_note(file_path, secret_key)
end
