class Teacher::UserAnswersController < ApplicationController
  def index
    @user_answers = UserAnswer.all
  end

  def show
    @user_answer = UserAnswer.find(params[:id])
  end
end
