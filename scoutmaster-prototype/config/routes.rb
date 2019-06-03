Rails.application.routes.draw do

  resources :posts
  resources :awards_and_honors
  devise_for :users

  #root 'devise/sessions#new'
 # devise_for :users, controllers: { sessions: 'users/sessions'}
  
  devise_scope :user do
    get "/users/sign_in" => "devise/sessions#new"

  end
  #root 'profiles#index'
  resources :users do
    resource :profiles 
  end


  resources :profiles do
    resource :awards_and_honors
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
