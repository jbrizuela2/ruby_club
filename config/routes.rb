Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"

  get "/console_it", to: "home#console_it"
  get "/links", to: "home#links"
  
  resources :users, only: [:edit, :update]
end
