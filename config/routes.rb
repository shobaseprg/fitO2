Rails.application.routes.draw do
    
  root to: 'entrances#index'
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  } 

  devise_scope :user do
    get "sign_out", to: redirect("users/sessions#destroy") 
    get '/users', to: redirect("/users/sign_up")
  end

  resources :users,only: :index do
    collection do
      patch "swich"
    end
  end

  resources :lessons,only: :index do
    member do
      get "inputs"
      get "outpus"
    end
    resources :posts
  end

end
