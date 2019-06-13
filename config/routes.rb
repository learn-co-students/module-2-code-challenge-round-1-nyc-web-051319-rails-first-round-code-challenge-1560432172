Rails.application.routes.draw do

  resources :powers, only: [:index, :show]
  resources :heroines


  # get '/heroines', to "heroines#index"
  # get '/heroines/new', to: "heroines#new"
  # get '/heroines/id', to: "heroines#show", as: "heroine"
  # get '/heroines/id/edit', to: "heroines#edit"
  # post '/heroines', to: "heroines#create"
  # patch '/heroines/:id', to "heroines#update"
  # delete 'heroines/:id', to "heroines#destroy"

end
