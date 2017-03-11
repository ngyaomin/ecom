Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

  resources :products do
    resources :orders 
  end

  root 'products#index'


end
