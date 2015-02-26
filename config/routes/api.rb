constraints Api::Subdomain do
  namespace :api, path: nil, defaults: { format: :json }  do
    namespace :v1 do
      get '/', to: 'base#index'
      namespace :survey do
        resources :send
      end
    end
  end
end
