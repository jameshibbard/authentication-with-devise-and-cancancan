Rails.application.routes.draw do
  devise_for :users, controllers: { confirmations: 'confirmations' }

  root 'welcome#index'

  namespace :admin do
    root 'users#index'

    resources :users
  end

  devise_scope :user do
    patch :confirm, to: 'confirmations#confirm'
  end

  authenticated :user do
    root 'items#index', as: :authenticated_root
  end

  resources :items, :roles
end
