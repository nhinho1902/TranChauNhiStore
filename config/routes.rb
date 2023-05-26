require 'sidekiq/web'

Rails.application.routes.draw do
  resources :marketing_contents
  resources :communication_designs
  resources :human_resources
  resources :event_operations
  resources :sponsor_levels
  resources :sponsors
  resources :marketings
  resources :speakers
  resources :speaking_topics
    authenticate :user, lambda { |u| u.admin? } do
      mount Sidekiq::Web => '/sidekiq'
    end


  devise_for :users
  root to: 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
