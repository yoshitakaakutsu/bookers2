Rails.application.routes.draw do
  get 'homes/top'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.htm
  root to:"homes#top"


  get "homes/about" => "homes#about", as: "about"
  resources :books, only: [:index, :show, :destroy]
  resources :users, only: [:show, :edit, :index, :destroy]
end
