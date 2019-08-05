Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks',
                                    registrations: 'registrations' }
  root to: 'pages#home'
  post '/filter_with_ajax', to: 'pages#filter_with_ajax'

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
end
