# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
require 'securerandom'

def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
    # Use the existing token.
    File.read(token_file).chomp
  else
    # Generate a new token and store it in token_file.
    token = SecureRandom.hex(64)
    File.write(token_file, token)
    token
  end
end

Proapp::Application.config.secret_key_base = secure_token

#Proapp::Application.config.secret_key_base = '02ccd5ba9e463cdb847c480f31bb6b02c3ccbf6a7c59124a418e3fd6dbb8e3abbedabb240b52d99e20ec3cd64e48ace7a99eec0fc15fe4bfcb3136b6965ffb51'
