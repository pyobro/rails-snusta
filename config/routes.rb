# Rails.application.routes.draw do
#   get 'user_sessions/new'
#   get 'user_sessions/create'
#   get 'user_sessions/destroy'
#
#   resources :users
#   resources :posts
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# end

Rails.application.routes.draw do
  root 'users#index'

  resources :user_sessions
  resources :users
  resources :posts

  get 'login' => 'user_sessions#new', as: :login
  get 'logout' => 'user_sessions#destroy', as: :logout
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end