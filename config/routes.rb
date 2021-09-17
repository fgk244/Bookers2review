Rails.application.routes.draw do

  devise_for :users, controllers: {
    sessions: 'devise/sessions',
    registrations: 'devise/registrations'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'homes#top'

  get "/home/about" => "homes#about"
  post 'books' => 'books#create'
  resources :users
  resources :books

  resources :users, only: [:index, :show, :edit, :update]


end
