Rails.application.routes.draw do
  resources :users
  resources :articles
  root 'pages#home'
  get 'about', to: 'pages#about'
  resource :articles
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
end