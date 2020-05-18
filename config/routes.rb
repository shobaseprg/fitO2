Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions',
    :passwords = 'users/password/edit' 
  } 

  devise_scope :user do
    get "sign_out", to: redirect("users/sessions#destroy") 
    get '/users', to: redirect("/users/sign_up")
  end

  
  root to: 'entrances#index'

  resources :users,only:[:show] do
    collection do
      patch "swich"
      get "history_input"
      get "history_output"
      get "ranking_all"
    end
  end

  resources :lessons,only: :index do
    member do
      get "inputs"
      get "outputs"
      get "all_inputs_of_base"
      get "all_outputs_of_base"
      get "all_inputs_of_development"
      get "all_outputs_of_development"
      get "all_input_of_lasttask"
      get "all_output_of_lasttask"
    end
    resources :posts, only: [:new,:create]
    resources :input_posts, only: [:new,:create]
  end

  resources :input_posts, only: [:edit,:update,:destroy]

  resources :posts,only: [:show,:update] do
    member do
      get "myshow"
      patch "gooutput"
    end
    collection do
      delete "posts_clear"
    end
    resources :memos,only: :new
  end

  resources :memos,only: [:show,:create,:edit,:update]


  resources :articles do
    collection do
      get 'preview'
    end
  end

end
