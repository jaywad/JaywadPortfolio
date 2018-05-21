Rails.application.routes.draw do
  resources :portfolios

  # get 'pages/home'
  root to: 'pages#home'

  # get 'pages/about'
  get 'about', to: 'pages#about'

  # get 'pages/contact'
  get 'contact', to: 'pages#contact'
  
  resources :blogs


end
