Rails.application.routes.draw do
  get 'homes/top',as:'routes'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.htm
  root to:"homes#top"


  get "home/about" => "homes#about", as: "about"
  resources :books, only: [:index, :show, :destroy, :create, :edit, :update]
  resources :users, only: [:show, :edit, :index, :destroy, :update]
end
