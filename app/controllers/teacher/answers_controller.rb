class Teacher::AnswersController < ApplicationController
  before_action :set_virtual_users, only: [:new, :create, :edit, :update]
  before_action :set_answer, only: [:edit, :update, :destroy]

  def index
    @answers = Answer.all
  end

  def new
    @answer = Answer.new
  end

  def create
    @answer = Answer.new(virtual_user_id: params[:answer][:virtual_user_id], danger_level: params[:answer][:danger_level])
    if @answer.save
      flash[:success] = "作成しました．"
      redirect_to teacher_answers_path
    else
      render new_teacher_answer_path
    end
  end

  def edit
  end

  def update
    if @answer.update(virtual_user_id: params[:answer][:virtual_user_id], danger_level: params[:answer][:danger_level])
      flash[:success] = "更新しました．"
      redirect_to teacher_answers_path
    else
      render 'edit'
    end
  end

  def destroy
    if @answer.destroy
      flash[:success] = "削除しました．"
      redirect_to teacher_answers_path
    else
      render teacher_answers_path
    end
  end

  private
  def set_virtual_users
    @virtual_users = VirtualUser.all
  end

  def set_answer
    @answer = Answer.find(params[:id])
  end
end
