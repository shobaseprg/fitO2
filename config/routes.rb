Rails.application.routes.draw do

  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  } 

  devise_scope :user do
    get "sign_out", to: redirect("users/sessions#destroy") 
    get '/users', to: redirect("/users/sign_up")
  end

  
  root to: 'entrances#index'

  resources :users do
    collection do
      patch "swich"
    end
  end

  resources :lessons,only: :index do
    member do
      get "inputs"
      get "outpus"
    end
    resources :posts, only: [:new,:create]
  end

  resources :posts,only: :show 

  namespace :api, format: 'json' do
    get 'articles/preview'
  end

end
