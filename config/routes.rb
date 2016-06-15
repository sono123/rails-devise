Rails.application.routes.draw do
  devise_for :users
  # get '/signin' => 'sessions#new', :as => :signin
  # get '/signout' => 'sessions#destroy', :as => :signout
  resources :users
  root 'visitors#index'
end
