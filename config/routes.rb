Rails.application.routes.draw do
  
  root to: 'pages#home'
  # roots for login details
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'


  #CRUD routes for WORK
  # Fix below Crud and add delete path
  resources :works
  resources :users
  resources :properties
  resources :genres
  resources :bids
  # search bar
  # resources :seraches
  get '/search', :to => 'search#index'


end
