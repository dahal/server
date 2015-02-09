namespace :dashboard do
  resources :surveys, only: [:new, :create, :show]
  resources :home, only: [:index]
end
