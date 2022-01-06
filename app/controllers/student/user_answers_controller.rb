class Student::UserAnswersController < ApplicationController
  before_action :set_virtual_users, only: [:new, :create]

  def new
    @user_answer = UserAnswer.new
  end

  def create
    @user_answer = UserAnswer.new(user_id: params[:user_answer][:user_id], image: params[:user_answer][:image])
    if params[:user_answer][:image]
      set_image
    end
    @user_answer.save!
  end

  private
  def set_virtual_users
    @virtual_users = VirtualUser.all
  end

  def set_image
    image = params[:user_answer][:image]
    File.binwrite("public/user_answers/#{@user_answer.user_id}.jpg", image.read)
  end
end
