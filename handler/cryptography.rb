require_relative "constants"
require "openssl"

def encrypt(data, secret_key)
  while secret_key.length < 32
    secret_key += "+"
  end

  aes = OpenSSL::Cipher::AES256.new(:CBC)
  aes.encrypt
  aes.iv = AES_IV
  aes.key = secret_key

  return aes.update(data) + aes.final
end

def decrypt(data, secret_key)
  while secret_key.length < 32
    secret_key += "+"
  end

  aes = OpenSSL::Cipher::AES256.new(:CBC)
  aes.decrypt
  aes.iv = AES_IV
  aes.key = secret_key

  return aes.update(data)
end
