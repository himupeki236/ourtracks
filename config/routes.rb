Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :artists, only: :index
  root to: "artists#index"
  resources :artists, only: [:index, :new, :create] do
    get :search, on: :collection
    get :genre, on: :collection
    get :year, on: :collection
    resources :works, only: [:index, :new, :create] do
      resources :reviews, only: [:index, :new, :create]
      
    end
  end 
end
