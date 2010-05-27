# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_RailsScrum_session',
  :secret      => 'a2e3407848ed498912bc607030f608a4b4a57d3359f80048b325c60dbb824c69ac6d2ce58e98899c64a65d15e5b5810e1f03102c3524466e69de219b057bec8e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
