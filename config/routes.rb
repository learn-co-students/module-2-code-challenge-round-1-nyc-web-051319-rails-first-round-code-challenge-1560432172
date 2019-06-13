Rails.application.routes.draw do
  # get 'heroines_controller/new'
  #
  # get 'heroines_controller/edit'
  #
  # get 'heroines_controller/show'

  get '/powers', to:"powers#index", as:"powers"
  get '/powers/new', to:"powers#new"
  get '/powers/:id', to:"powers#show", as:"power"
  post '/powers/:id', to:"powers#create"
  get '/powers/:id/edit', to:"powers#edit"
  patch '/powers/:id', to:"powers#create"
  delete '/powers/:id', to:"powers#destroy"
  # resources :powers
  resources :heroines
end
