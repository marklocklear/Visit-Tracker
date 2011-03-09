# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_snp3_session',
  :secret      => '909164db82ea36a43ebe305234f0eaaa8ff1b069fa660d0f07b563dcb7aa88fa3e948db34f309d22b64e89a3b1a18a76eadfab98b0ff7089a4134699ce48e317'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
