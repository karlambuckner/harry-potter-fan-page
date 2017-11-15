Rails.application.routes.draw do
  resources :categories do
    resources :works
      end
      resources :works do
        resources :reviews
      end
      resources :reviews do
        resources :users
      end
    end
