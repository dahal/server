constraints Api::Subdomain do
  namespace :api, path: nil, defaults: { format: :json }  do
    namespace :v1 do
      get '/', to: 'base#index'
      resources :send_survey, only: [:create]
    end
  end
end
