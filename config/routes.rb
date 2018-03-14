Rails.application.routes.draw do

  get 'admin' => 'admin#index'

  get 'search' => 'profiles#index', as: 'profiles_index'

  root 'home#index'

  devise_for :users

  resources :roles, only: [:index, :new, :create, :edit, :update]
  
  resources :levels, only: [:index, :new, :create, :edit, :update]

  resources :skills, only: [:index, :new, :create, :edit, :update]
  
  resources :profiles, only: [:show, :new, :create, :update]  do
    member do
      get 'edit_info'
      get 'edit_description'
      get 'edit_level'
    end
    resources :repositories, only: [:new, :create, :edit, :update]
    resources :jobs, only: [:new, :create, :edit, :update]
    resources :educations, only: [:new, :create, :edit, :update]
    

    # ### verificar si se van a usar
    # resources :skills, except: [:index, :show, :new, :create, :edit, :update, :destroy] do
    #   collection do  
    #     get 'add'
    #     post 'added'
    #   end
    # end    
  end

  namespace :api do
    namespace :v1 do
      resources :profiles, only: [:index, :show]
    end
  end
  

  
end
