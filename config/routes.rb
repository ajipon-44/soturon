Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'teacher_session/new'
  # get 'teacher/login', to: 'teacher#login_form'
  get 'teacher/index', to: 'teacher#index'

  namespace :teacher do
    resources :virtual_users
    resources :posts, :follows, :goods, :replies, except: [:show]
  end

  root 'student/posts#index'
  get 'student/how_to_use', to: 'student#how_to_use'
  namespace :student do
    resources :posts, only: [:index, :show]
    resources :virtual_users, only: [:show]
    resource :answer, only: [:show]
    resources :follows, only: [:show]
    resource :user_answer, only: [:new, :create]
    post 'user_answers/check_answer', to: 'user_answers#check_answer'
  end
end
