Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :home, only: :index
  resources :users
  resources :posts
  resources :sessions

  root 'home#index'
end
