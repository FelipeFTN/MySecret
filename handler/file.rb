def read_file(path)
  file = File.new(path, "r")
  if file
    data = file.sysread(20)
    return data
  else
    puts "error: not able to access the file"
    return ""
  end
end

def write_file(path, data)
  File.open(path, "w") do |line|
    line.puts data
  end
end
