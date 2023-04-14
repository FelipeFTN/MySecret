require_relative "constants"


def get_file()
  print "file name: "
  file_name = gets.chomp
  file_path = "#{NOTES_DIRECTORY}/#{file_name}"
  return file_path
end

def get_secret_key(message = "secret key: ")
 print message
 secret_key = hasher(gets.chomp, 32)
 return secret_key
end

def read_file(file_path)
  file = File.open(file_path)
  if file
    data = file.read
    return data.chomp
  else
    puts "error: not able to access the file"
    return false
  end
end

def write_file(file_path, data)
  File.open(file_path, "w") do |line|
    line.puts data
  end
end
