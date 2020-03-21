Rails.application.routes.draw do
  devise_for :accounts
  # For details on the D3SL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/dashboard" => "accounts#index" 

  resources :posts, only: [:new,:create,:show] 
  
  root to: "public#homepage"
end
