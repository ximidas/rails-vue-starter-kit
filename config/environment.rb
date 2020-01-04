# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!
EncryptedFormFields.secret_key_base = Rails.application.secret_key_base
EncryptedFormFields.secret_token = SecureRandom.hex(64)
