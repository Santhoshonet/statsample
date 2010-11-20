# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_StatisticalMethods_session',
  :secret      => 'dffe679a31d89cf10866c16eb64c99730f7130ba9b0b857a8c14858367fe2d850673ba3ee48ebe071449044800fef8759a4acde3df8ba821a74ace9dad7e7aef'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
