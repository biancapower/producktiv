Rails.application.routes.draw do
  resources :collections
  root 'pages#home'
  devise_for :users
end
