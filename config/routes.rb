Rails.application.routes.draw do
  resources :powers
  resources :heroines

  # get "/search" => 'heroines#index'
end
