Rails.application.routes.draw do
  resources :powers, only: [:index, :show]
  resources :heroines
  get 'search', to: "powers#index"
end
