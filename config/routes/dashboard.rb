namespace :dashboard do
  resources :surveys, only: [:new, :create]
end
