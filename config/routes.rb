# frozen_string_literal: true

# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  resources :users

  # Defines the root path route ("/")
  # root "articles#index"
end
