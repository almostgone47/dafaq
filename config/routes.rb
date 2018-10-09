Rails.application.routes.draw do
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    
  root "events#index"

  resources :users, only: [:create, :update, :edit, :delete]
  resources :events 

  resources :welcome, only:[:index]
  
end
