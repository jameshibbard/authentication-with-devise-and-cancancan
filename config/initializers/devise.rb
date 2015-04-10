# Devise.setup do |config|
#
#   config.mailer_sender = 'no-reply@brunoocasali.com'
#   require 'devise/orm/active_record'
#   config.case_insensitive_keys = [ :email ]
#   config.strip_whitespace_keys = [ :email ]
#   config.skip_session_storage = [:http_auth]
#   config.stretches = Rails.env.test? ? 1 : 10
#   config.reconfirmable = true
#   config.expire_all_remember_me_on_sign_out = true
#   config.password_length = 8..128
#   config.reset_password_within = 6.hours
#   config.sign_out_via = :delete
# end

# Use this hook to configure devise mailer, warden hooks and so forth.
# Many of these configuration options can be set straight in your model.
Devise.setup do |config|
  config.secret_key = 'c0679e45ce3cb95797b8a7cea0e7d63e8dc62664383b5807e8fce85a6db6ff41d584c756129d2b0bfc9e910b462a9058bf67f2498bbbc2e39f05857af243634c'
  config.mailer_sender = 'brunoocasali@gmail.com'
  require 'devise/orm/active_record'
  config.case_insensitive_keys = [ :email ]
  config.strip_whitespace_keys = [ :email ]
  config.skip_session_storage = [:http_auth]
  config.stretches = Rails.env.test? ? 1 : 10
  config.confirm_within = 3.days
  config.reconfirmable = true
  config.remember_for = 2.months
  config.expire_all_remember_me_on_sign_out = true
  config.password_length = 8..128
  config.timeout_in = 100.minutes
  config.lock_strategy = :failed_attempts
  config.unlock_keys = [:email]
  config.unlock_strategy = :email
  config.maximum_attempts = 3
  config.unlock_in = 1.hour
  config.last_attempt_warning = true
  config.reset_password_keys = [ :email ]
  config.reset_password_within = 6.hours
  config.sign_out_via = [:delete, :get]
end
