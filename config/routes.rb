Rails.application.routes.draw do
  resources :home_banners
  resources :marquees
  resources :patterns
  resources :notices
  resources :frases
  resources :users
  resources :products
  get 'producto/:id', to: 'products#showpub'
  get 'store', to: 'pages#store'
  get 'sobre-mi', to: 'pages#about', as: 'about_me'
  get 'contacto', to: 'pages#contact', as: 'contact'
  get 'trabajando', to: 'pages#working'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#home'

  get 'forbidden', to: 'pages#forbidden'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
