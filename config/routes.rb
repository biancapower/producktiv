Rails.application.routes.draw do
  resources :entries
  resources :collections
  root 'pages#home'
  devise_for :users
end
