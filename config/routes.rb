Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :home, only: :index
  resources :users do
    resources :posts
  end
  resources :sessions

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  get '/register', to: 'users#new'

  # match '/users/:user_id/posts/new', :to => 'posts#create', :via => [:post]

  root 'home#index'
end
