Rails.application.routes.draw do
  resources :powers
  resources :heroines

  #below are the routes defined if I were to not use the resources method, I would not only have to create these routes but also helpers using (as: 'helper name')

  #get '/heroines', to: 'heroines#index'
  #get '/heroines/new', to 'heroines#new' as: 'new heroines_path'
  #get '/heroines/:id', to: 'heroines#show'
  #post '/heroines', to: 'heroines#create'

  #get '/powers', to: 'powers#index'
  #get 'powers/:id' to: 'powers#show'
end
