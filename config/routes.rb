Rails.application.routes.draw do
  get 'roles/index'

  get 'roles/new'

  get 'roles/edit'

  devise_for :users
  
  resources :profiles, only: [:show, :new, :create, :edit, :update]  do
    resources :repositories, only: [:index, :new, :create, :edit, :update]
    resources :jobs, only: [:index, :new, :create, :edit, :update]
    resources :educations, only: [:index, :new, :create, :edit, :update]
  end

  resources :skills, only: [:index, :new, :create, :edit, :update] do 
    resources :requirements, only: [:index, :new, :create, :edit, :update]
  end

  
end
