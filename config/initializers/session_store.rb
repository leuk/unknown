# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_sunulamb_session',
  :secret      => 'bc6e2ac7be818ce096049cc0e1432ea610bb6237306da153a466da2ff3f013d3125bac7cdbf4419d25267b3a6e195f52fdde8b5dd8867b6854365f110c9fb3aa'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
