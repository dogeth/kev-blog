# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_kev-blog_session',
  :secret      => '28fad8a722ca78274a5200ce90c4704f46a5f67c9233e9bc408b44efa1e20efc3f9f9c8ffd56a46673b43e3d0e3953fe4969bfbb2a27dba96e68d439e62b0fd5'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
