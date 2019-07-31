Rails.application.routes.draw do
  
  
  get 'signin/create'
  get 'signin/destroy'
  get 'opportunity_api/index'
  get 'opportunity_api/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do   
    namespace :v1 do   
      resources :users, only: [:index, :show, :create, :update, :destroy]
      resources :categories, only: [:index, :show, :create, :update, :destroy]
      resources :opportunities
      resources :opportuniy_api, only: [:index, :show]
      
    end
  end


 
end
