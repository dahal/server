Clearance.configure do |config|
  config.allow_sign_up = true
  config.cookie_domain = '.example.com'
  config.cookie_expiration = lambda { |cookies| 1.year.from_now.utc }
  config.cookie_name = 'remember_token'
  config.cookie_path = '/'
  config.routes = false
  config.httponly = false
  config.mailer_sender = Settings.mandrill.from_email
  config.password_strategy = Clearance::PasswordStrategies::BCrypt
  config.redirect_url = '/dashboard/surveys/new'
  config.secure_cookie = false
  config.sign_in_guards = []
  config.user_model = User
end
