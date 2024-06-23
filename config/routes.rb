Rails.application.routes.draw do

  get 'homes/top'
  devise_for :users
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  resources :users, only: [:show, :edit, :update ,:index]

  root to: 'homes#top'
  get "/" => "homes#top"
  get 'home/about' => 'homes#about', as: 'about'


end
