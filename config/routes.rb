Rails.application.routes.draw do
  resources :categories do
    resources :works
      end
      resources :works do
        resources :reviews
      end
    end
