require_relative "cryptography"
require_relative "system"
require_relative "file"
require_relative "note"

def handler(option)
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
    secret_key = get_secret_key("deleting confirmation secret_key: ")

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
end
