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
    # # resources :levels, except: [:index, :show, :new, :create, :edit, :update, :destroy] do
    #   collection do
    #     get 'add'
    #     post 'added'
    #   end
    # end
    resources :jobs, only: [:new, :create, :edit, :update]
    resources :educations, only: [:new, :create, :edit, :update]
    resources :skills, except: [:index, :show, :new, :create, :edit, :update, :destroy] do
      collection do
        get 'add'
        post 'added'
      end
    end
      
  end

  

  
end
