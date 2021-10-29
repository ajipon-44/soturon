Rails.application.routes.draw do
  get 'teacher_session/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'teacher/login', to: 'teacher#login_form'
  get 'teacher/index', to: 'teacher#index'

  namespace :teacher do
    resources :virtual_users
    resources :posts
  end
end
