Rails.application.routes.draw do
  devise_for :users
  scope "/admin" do
    resources :users
  end

  resources :items

  resources :roles

  authenticated :user do
    root :to => 'items#index', as: :authenticated_root
  end
  root :to => 'welcome#index'
end
