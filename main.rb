require_relative "handler/note"

puts "==== MySecret ===="

valid_options = [1, 2]

puts "[1] Create new note"
puts "[2] Read a note"

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
else
  puts "error: invalid option"
end
