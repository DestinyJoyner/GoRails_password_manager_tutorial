Rails.application.routes.draw do
  devise_for :users
  # shortcut for all the routes for the passwords resource
  resources :passwords

  get "up" => "rails/health#show", as: :rails_health_check


  # Defines the root path route ("/")
  root "passwords#index"
end
