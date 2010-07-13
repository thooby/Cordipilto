# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_foca2_session',
  :secret      => '2215cd3c619fe2f8acadc228036f261454735e59a22e403d4d041baf70a22681a6a6caa2893c8c71c54ca92d37ac351d595ee8f0ede5b21defdf076f837159af'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
