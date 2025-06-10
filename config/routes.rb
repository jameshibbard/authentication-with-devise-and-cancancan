Rails.application.routes.draw do
  devise_for :users

  authenticated :user do
    root "items#index", as: :authenticated_root
  end
  root "welcome#index"

  scope "/admin" do
    resources :users
  end

  resources :items
  resources :roles

  get "up" => "rails/health#show", as: :rails_health_check
end
