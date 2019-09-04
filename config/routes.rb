Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks', registrations: 'registrations',
                                    sessions: 'sessions' }
  root to: 'pages#home'
  post '/filter_with_ajax', to: 'pages#filter_with_ajax'

  # USERS ROUTES
  resources :users, only: [:index, :show] do
    # USER_PROFILS ROUTES WITH AJAX
    resources :user_profils, only: [:new, :create]
  end

  # CITIES ROUTES
  resources :cities, only: [:show]

  # EQUIPMENTS ROUTES
  resources :info_equipments, only: [:show]

  # FACEBOOK AUTHENTIFICATION
  authenticated :user do
    root 'pages#home', as: 'authenticated_root'
  end
  devise_scope :user do
    root 'devise/sessions#new'
  end
  resources :authentications, only: [:destroy]

  # PUBLIC ERRORS URL
  match "/404", to: "errors#not_found", via: :all
  match "/422", to: "errors#unacceptable", via: :all
  match "/500", to: "errors#internal_server_error", via: :all

  # 301 REDIRECT FROM OLD URLs
  match "/old_path_to_info_equipments/:id", to: redirect("/info_equipments/%{id}s"), via: :all

  # Sitemap
  get '/sitemap.xml' => 'sitemaps#index', defaults: { format: 'xml' }

  #robot.txt
  get "/robots.:format", to: "pages#robots"
end


