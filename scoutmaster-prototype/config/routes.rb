Rails.application.routes.draw do

  resources :awards_and_honors
  devise_for :users

 # devise_for :users, controllers: { sessions: 'users/sessions'}
  
  #root 'profiles#index'
  resources :users do
    resources :profiles 
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
