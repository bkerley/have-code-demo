# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_have-code-demo_session',
  :secret      => '53d8aadc666700da4a6718e0ea62ecdbe19006ea98ddeb9fcebe22a7db8755db124f92fa55d60f71f69f3550e5f99b605c57ec6c6483fb84f8a35087a05aceaa'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
