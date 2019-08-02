Rails.application.routes.draw do
  
  

 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do   
    namespace :v1 do   
      resources :users, only: [:index, :show, :create, :update, :destroy]
      resources :categories, only: [:index, :show, :create, :update, :destroy]
      resources :opportunities
      resources :api_opportunities, only: [:index, :show]
      
    end
  end

  root to: "home#index" 

  post 'refresh', controller: :refresh, action: :create
  post 'signin', controller: :signin, action: :create 
  post 'signup', controller: :signup, action: :create 
  delete 'signin', controller: :signin, action: :destroy 

end
