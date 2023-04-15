require "base64"

def encode(data)
  encoded_data = Base64.encode64(data)
  return encoded_data
end

def decode(data)
  decoded_data = Base64.decode64(data)
  return decoded_data
end
