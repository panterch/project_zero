ProjectZero::Application.routes.draw do
  root :to => "home#index"

  resources :users
  resources :user_sessions

  match '/login', :to => 'user_sessions#new', :as => :login
  match '/logout', :to => 'user_sessions#destroy', :as => :logout
end
