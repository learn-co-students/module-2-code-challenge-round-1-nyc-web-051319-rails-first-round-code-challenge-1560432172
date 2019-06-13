Rails.application.routes.draw do
  get "/heroines/results", to: "heroines#index"
  resources :powers, only: [:index, :show]
  resources :heroines, only: [:index, :show, :new]
  post "/heroines", to: "heroines#create"
end
