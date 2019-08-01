Rails.application.routes.draw do
  
  

 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do   
    namespace :v1 do   
      resources :users, only: [:index, :show, :create, :update, :destroy]
      resources :categories, only: [:index, :show, :create, :update, :destroy]
      resources :opportunities
      resources :opportuniy_api, only: [:index, :show]
      
        get "/current_user", to: "auth#get_user_from_token"
        post "/login", to: "auth#login"
        put "/users/:id/avatar_upload/",   to: "users#avatar_upload"
    end
  end

  root to: "home#index" 



end
