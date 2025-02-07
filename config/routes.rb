Rails.application.routes.draw do
  devise_for :users
  # shortcut for all the routes for the passwords resource
  resources :passwords do
  # routes for password sharing btw users add a nested route
  resources :shares, only: [:new, :create, :destroy]
  # command rails routes -g shares to see all nested routes
      # password_shares GET  /passwords/:password_id/shares(.:format)   shares#index
      # POST   /passwords/:password_id/shares(.:format)  shares#create
      # new_password_share GET /passwords/:password_id/shares/new(.:format) shares#new
      # edit_password_share GET    /passwords/:password_id/shares/:id/edit(.:format) shares#edit
      # password_share GET    /passwords/:password_id/shares/:id(.:format) shares#show
      # PATCH  /passwords/:password_id/shares/:id(.:format)  shares#update
      # PUT    /passwords/:password_id/shares/:id(.:format)  shares#update
      # DELETE /passwords/:password_id/shares/:id(.:format) shares#destroy
  end
  


  # Defines the root path route ("/")
  root "passwords#index"
end
