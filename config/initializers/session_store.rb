# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_directorio_session',
  :secret      => 'b090cd01263fa97e53c1710658bd3b9698e85e839bbb3aaa3df3c3cd64c2cb8a848e47ebb6cb5f887fb009cb039844e6795b889e913d22bfa11b8dc361904388'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
