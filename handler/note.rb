require_relative "cryptography"
require_relative "base64"
require_relative "editor"
require_relative "file"

def write_note(file_path, secret_key)
  text_editor = get_text_editor()
  system("#{text_editor}", "#{file_path}")

  print "Press enter to proceed"
  gets

  data = read_file(file_path)
  encrypted_data = encrypt(data, secret_key)
  encoded_data = encode(encrypted_data)

  write_file(file_path, encoded_data)
end

def read_note(file_path, secret_key)
  data = read_file(file_path) 
  decoded_data = decode(data)
  decrypted_data = decrypt(decoded_data, secret_key)

  temp_file_path = "#{file_path}.temp"
  write_file(temp_file_path, decrypted_data)

  text_editor = get_text_editor()
  system("#{text_editor}", temp_file_path)

  print "Press enter to proceed"
  gets

  system("rm #{temp_file_path}")
end

def encrypt_note(file_path, secret_key)
  data = read_file(file_path)  
  encoded_data = encode(data)
  encrypted_data = encrypt(encoded_data, secret_key)

  write_file(file_path, encrypted_data)
end
