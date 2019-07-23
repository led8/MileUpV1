Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  ## FACEBOOK AUTHENTIFICATION
  authenticated :user do
    root 'pages#home', as: 'authenticated_root'
  end
  devise_scope :user do
    root 'devise/sessions#new'
  end

  ## CSV ROOTS
  get 'create_contact_models_from_csv', to: 'pages#create_contact_models_from_csv'
  get 'create_city_equipments_models_from_csv', to: 'pages#create_city_equipments_models_from_csv'
  get 'create_info_equipments_models_from_csv', to: 'pages#create_info_equipments_models_from_csv'
end
