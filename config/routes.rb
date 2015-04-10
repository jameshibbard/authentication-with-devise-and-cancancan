Rails.application.routes.draw do
  devise_for :users, :controllers => {:confirmations => 'confirmations'}

  scope "/admin" do
    resources :users
  end

  devise_scope :user do
    patch "/confirm" => "confirmations#confirm"
  end

  resources :items

  resources :roles

  authenticated :user do
    root :to => 'items#index', as: :authenticated_root
  end
  root :to => 'welcome#index'
end
