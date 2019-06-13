Rails.application.routes.draw do
  # resources :powers, only: [:index, :show]
  # resources :heroines, only: [:index, :show, :new, :create]
  get "/powers", to: "powers#index"
  get "/powers/:id", to: "powers#show", as: "power"
  get "/heroines", to: "heroines#index"
  get "/heroines/new", to: "heroines#new", as: "new_heroine"
  get "/heroines/:id", to: "heroines#show", as: "heroine"
  post "/heroines", to: "heroines#create"
end
