def get_path()
  print "file number: "
  index = gets.chomp
  directory = "./notes/#{index}.txt"
  return directory
end
