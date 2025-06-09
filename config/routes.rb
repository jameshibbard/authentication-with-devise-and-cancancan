Rails.application.routes.draw do
  devise_for :users
  scope "/admin" do
    resources :users
  end

  resources :items
  resources :roles

  get "up" => "rails/health#show", as: :rails_health_check

  root "items#index"
end
