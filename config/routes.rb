Rails.application.routes.draw do
  devise_for :users

  resources :series

  root to: 'pages#home'
end
