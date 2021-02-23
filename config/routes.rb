Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :artists, only: :index
  root to: "artists#index"
  resources :artists, only: [:index] do
    resources :works, only: [:index] do
      resources :reviews, only: [:index]
    end
  end 
end
