class Api::Subdomain
  def self.matches?(request)
    Rails.env.staging? ? true : request.subdomain == 'api'
  end
end
