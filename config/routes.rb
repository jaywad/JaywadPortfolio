Rails.application.routes.draw do
  resources :portfolios, except: [:show]

  # now we can create our own show action since we used except up
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  # get 'pages/home'
  root to: 'pages#home'

  # get 'pages/about'
  get 'about', to: 'pages#about'

  # get 'pages/contact'
  get 'contact', to: 'pages#contact'
  
  resources :blogs


end
