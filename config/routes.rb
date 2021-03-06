Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'teacher_session/new'
  # get 'teacher/login', to: 'teacher#login_form'
  get 'teacher/index', to: 'teacher#index'

  namespace :teacher do
    resources :virtual_users
    resources :posts, :follows, :goods, :replies, :answers, except: [:show]
    resources :user_answers, only: [:index, :show]
    resources :user_answers do
      member do
        get "show_image"
      end
    end
  end

  root 'student/posts#index'
  get 'student/how_to_use', to: 'student#how_to_use'
  namespace :student do
    resources :posts, only: [:index, :show]
    resources :virtual_users, only: [:show]
    resource :answer, only: [:show]
    resources :follows, only: [:show]
    resource :user_answer, only: [:new, :create]
    post 'answer/answer_check', to: 'answers#answer_check'
    get 'answer/result', to: 'answers#result'
  end
end
