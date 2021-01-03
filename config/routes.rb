Rails.application.routes.draw do
  resources :orders
  resources :menu_items
  resources :line_items
  resources :carts
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#home"

end
