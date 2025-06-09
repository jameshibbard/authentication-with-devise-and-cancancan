Rails.application.routes.draw do
  devise_for :users
  resources :items
  resources :roles
  resources :users

  get "up" => "rails/health#show", as: :rails_health_check

  root "items#index"
end
