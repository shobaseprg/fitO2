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

  resources :lesson,only: :index do
    member do
      get "2_select"
      get "3_select"
      get "4_select"
    end
  end

end
