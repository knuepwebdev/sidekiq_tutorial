require 'sidekiq/web'

Helloworld::Application.routes.draw do
  mount Sidekiq::Web => '/sidekiq'

  resources :products, only: [:index, :new, :create, :show]
  root 'home#index'
  get "home/index"
  
end
