require_relative "constants"
require "openssl"
require "digest"

## TODO: Fix some bug here

def encrypt(data, secret_key)
  aes = OpenSSL::Cipher::AES256.new(:CBC)
  aes.encrypt
  aes.key = hasher(secret_key)

  return aes.update(data)
end

def decrypt(data, secret_key)
  aes = OpenSSL::Cipher::AES256.new(:CBC)
  aes.decrypt
  aes.key = hasher(secret_key)

  return aes.update(data)
end

def hasher(secret_key)
  secret_key = Digest::SHA256.hexdigest secret_key
  secret_key = secret_key[0, 32]
  puts "secret key: #{secret_key}"
  return secret_key
end
