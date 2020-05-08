Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  } 

  devise_scope :user do
    get "sign_out", :to => "users/sessions#destroy" 
  end

  root to: 'entrances#index' 

  resources :entrances do
    collection  do
      patch "swich"
    end
  end

end
