Rails.application.routes.draw do
  resources :menus, only:[:index, :show]
  resources :submissions, only:[:index]
  resources :orders
  resources :menu_items
  resources :line_items
  resources :carts
  devise_for :users, controllers: {omniauth_callbacks: 'users/omniauth', registrations: 'users/registrations'}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#home"

end
