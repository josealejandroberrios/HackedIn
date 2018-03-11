Rails.application.routes.draw do

  root 'home#index'

  devise_for :users

  resources :roles, only: [:index, :new, :create, :edit, :update]
  
  resources :levels, only: [:index, :new, :create, :edit, :update]

  resources :skills, only: [:index, :new, :create, :edit, :update] do 
    resources :requirements, only: [:index, :new, :create, :edit, :update]
  end
  
  resources :profiles, only: [:show, :new, :create, :edit, :update]  do  
    resources :repositories, only: [:new, :create, :edit, :update]
    resources :jobs, only: [:new, :create, :edit, :update]
    resources :educations, only: [:new, :create, :edit, :update]
    resources :skills, except: [:index, :show, :new, :create, :edit, :update, :destroy] do
      collection do
        get 'add'
        post 'added'
      end
    end

    member do
      get 'levels/add' => 'profiles#level_add'
      post 'levels/added' => 'profiles#level_added'
    end
      
  end

  Rails.application.routes.draw do
    namespace :api, defaults: { format: "json" } do
        resources :profiles
        resources :users
        
      end
    end

  
end
