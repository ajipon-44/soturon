Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'teacher_session/new'
  # get 'teacher/login', to: 'teacher#login_form'
  get 'teacher/index', to: 'teacher#index'

  namespace :teacher do
    resources :virtual_users
    resources :posts, :follows, :goods, :replies, except: [:show]
  end

  root 'students#index'
  resources :students, except: [:index]
end
