Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks',
                                    registrations: 'registrations' }
  root to: 'pages#home'

  ## TESTS
  get 'test', to: 'users#test'

  ## USERS ROUTES
  resources :users, only: [:show]

  ## FACEBOOK AUTHENTIFICATION
  authenticated :user do
    root 'pages#home', as: 'authenticated_root'
  end
  devise_scope :user do
    root 'devise/sessions#new'
  end
  resources :authentications, only: [:destroy]


  ## CSV ROUTES
  get 'create_contact_models_from_csv', to: 'pages#create_contact_models_from_csv'
  get 'create_city_equipments_models_from_csv', to: 'pages#create_city_equipments_models_from_csv'
  get 'create_info_equipments_models_from_csv', to: 'pages#create_info_equipments_models_from_csv'
end
