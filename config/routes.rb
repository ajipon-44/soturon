Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'teacher_session/new'
  # get 'teacher/login', to: 'teacher#login_form'
  get 'teacher/index', to: 'teacher#index'

  namespace :teacher do
    resources :virtual_users
    resources :posts, :follows, :goods, :replies, :answers, except: [:show]
  end

  root 'student/posts#index'
  namespace :student do
    resources :posts, only: [:index, :show]
    resources :virtual_users, only: [:show]
  end
end
