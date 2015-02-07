resources :passwords,
  controller: 'clearance/passwords',
  only: [:create, :new]

resource :session,
  controller: 'clearance/sessions',
  only: [:create]

resources :users,
  controller: 'clearance/users',
  only: Clearance.configuration.user_actions do
    resource :password,
    controller: 'clearance/passwords',
    only: [:create, :edit, :update]
end

if Clearance.configuration.allow_sign_up?
  get '/signup' => 'clearance/users#new', as: 'sign_up'
end

get '/signin' => 'clearance/sessions#new', as: 'sign_in'
delete '/signout' => 'clearance/sessions#destroy', as: 'sign_out'
