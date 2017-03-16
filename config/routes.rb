Rails.application.routes.draw do
  resources :carts do
    resources :payments, only: [:create, :new]
    resources :orders, only: [:create]
  end




  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

  resources :products do
    resources :line_items
    resources :orders
  end

  root 'products#index'


end
