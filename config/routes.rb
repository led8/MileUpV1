Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks',
                                    registrations: 'registrations' }
  root to: 'pages#home'

  ## USERS ROUTES
  resources :users, only: [:index, :show] do
    ## USER_PROFILS ROUTES WITH AJAX
    resources :user_profils, only: [:new, :create]
  end

  ## EQUIPMENTS ROUTES
  resources :info_equipments, only: [:show]

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
