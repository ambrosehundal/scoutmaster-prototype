Rails.application.routes.draw do

 
  resources :jobs
  devise_for :users

  devise_scope :user do
    get "/users/sign_in" => "devise/sessions#new"

  end
  #root 'profiles#index'
  resources :users do
    resource :profiles 
  end
  
  resources :posts
  resources :awards_and_honors
  
  resources :profiles do
    resource :awards_and_honors
  end
  


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
