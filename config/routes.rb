Rails.application.routes.draw do
  resources :stores
  resources :warehouses
  devise_for :users
  root 'stores#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
