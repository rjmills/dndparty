Rails.application.routes.draw do
  root :to => 'users#index'

  get 'login' => 'user_sessions#new', :as => :login
  post 'login' => 'user_sessions#create', :as => :login_post
  post 'logout' => 'user_sessions#destroy', :as => :logout

  resources :users do
    member do
      get :activate
    end
  end

  resources :password_resets, only: [:new, :create, :edit, :update]
end
