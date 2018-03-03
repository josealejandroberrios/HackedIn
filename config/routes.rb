Rails.application.routes.draw do
  get 'roles/index'

  get 'roles/new'

  get 'roles/edit'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
