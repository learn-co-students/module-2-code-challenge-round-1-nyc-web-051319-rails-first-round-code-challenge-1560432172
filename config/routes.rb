Rails.application.routes.draw do
  resources :powers, only: [:index, :show]
  #get '/powers', to: 'powers#index', as: 'powers'
  #get '/powers/:id', to: 'powers#show', as: 'power'

  resources :heroines, only: [:index, :show, :new, :create]
  #get '/heroines', to: 'heroines#index', as: 'heroines'
  #get '/heroines/new', to: 'heroines#new', as: 'new_heroine'
  #get '/heroines/:id', to: 'heroines#show', as: 'heroine'
  #post '/heroines', to: 'heroines#create'
end
