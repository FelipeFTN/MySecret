require_relative "constants"
require "openssl"
require "digest"

def encrypt(data, secret_key)
  aes = OpenSSL::Cipher.new("aes-256-cbc")
  aes.encrypt
  aes.iv = hasher(AES_IV, 16)
  aes.key = hasher(secret_key, 32)

  return aes.update(data) + aes.final
end

def decrypt(data, secret_key)
  aes = OpenSSL::Cipher.new("aes-256-cbc")
  aes.decrypt
  aes.iv = hasher(AES_IV, 16)
  aes.key = hasher(secret_key, 32)

  return aes.update(data) + aes.final
end

def hasher(secret, limit_chars)
  print "#{secret}: "
  secret = Digest::SHA256.hexdigest secret
  secret = secret[0, limit_chars]
  puts "#{secret}"
  return secret
end
