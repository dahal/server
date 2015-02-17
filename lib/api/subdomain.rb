class Api::Subdomain
  def self.matches?(request)
    # Activate api subdomain only on production and test environment
    Rails.env.staging? ? true : request.subdomain == 'api'

    # Activate api subdomain only on production environment
    # Rails.env.production? ? request.subdomain == 'api' : true
  end
end
