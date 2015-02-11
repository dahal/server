constraints Api::Subdomain do
  namespace :api, path: nil, defaults: { format: :json }  do
    namespace :v1 do
      resources :users
    end
  end
end
