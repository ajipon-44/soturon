Rails.application.routes.draw do
  get 'teacher_session/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'teacher/login', to: 'teacher#login_form'
  get 'teacher/index', to: 'teacher#index'

  # get 'virtual_user/index', to: 'virtual_user#index'
  # get 'virtual_user/new', to: 'virtual_user#new'
  # post 'virtual_user/create', to: 'virtual_user#create'
  # get 'virtual_user/edit/:id', to: 'virtual_user#edit', as: 'virtual_user_edit'
  # patch 'virtual_user/update/:id', to: 'virtual_user#update', as: 'virtual_user_update'
  namespace :teacher do
    #resources :virtual_user, except: [:show]
    resources :virtual_users, except: [:show]
  end
end
