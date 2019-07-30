Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do   
    namespace :v1 do    
      resources :users, only: [:index, :show, :create, :update, :destroy]
      resources :categories, only: [:index, :show, :create, :update, :destroy]
      resources :locations, only: [:index, :show]
      resources :opportunities, only: [:index, :show]
      
    end
  end


 
end
