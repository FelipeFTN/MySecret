require_relative "constants"
require "openssl"
require "digest"

def encrypt(data, secret_key)
  aes = OpenSSL::Cipher.new("aes-256-cbc")
  aes.encrypt
  aes.iv = hasher(IV_ALGORITHM, 16)
  aes.key = secret_key

  return aes.update(data) + aes.final
end

def decrypt(data, secret_key)
  aes = OpenSSL::Cipher.new("aes-256-cbc")
  aes.decrypt
  aes.iv = hasher(IV_ALGORITHM, 16)
  aes.key = secret_key

  return aes.update(data) + aes.final
end

def hasher(secret, limit_chars)
  secret = Digest::SHA256.hexdigest secret
  secret = secret[0, limit_chars]
  return secret
end
