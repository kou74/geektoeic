Rails.application.routes.draw do
  devise_for :users 
  resources :geektoeics, only: [:index]
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 resources :users, only: [:show] 

  get 'geektoeics/:geektoeic_id/likes' => 'likes#create'
get 'geektoeics/:geektoeic_id/likes/:id' => 'likes#destroy'
resources :geektoeics

  resources :geektoeics do
  resources :likes, only: [:create, :destroy]
  resources :comments, only: [:create]
  end

  root 'geektoeics#index'
  end

 