class Student::UserAnswersController < ApplicationController
  before_action :set_virtual_users, only: [:new, :create]
  before_action :user_answer_params, only: [:create]

  def new
    @user_answer = UserAnswer.new
  end

  def create
    user_answers = params[:user_answer].select{|key, value| key.to_i > 0}
    user_answers.each do |key, value|
      answer = set_answer(key)
      result_belonging = check_answer(value, answer, "belonging")
      result_name = check_answer(value, answer, "name")
      result_address = check_answer(value, answer, "address")
      UserAnswer.create!(
        belonging: value[:belonging],
        name: value[:name],
        address: value[:address],
        result_belonging: result_belonging,
        result_name: result_name,
        result_address: result_address
      )
    end
  end

  private
  def set_virtual_users
    @virtual_users = VirtualUser.all
  end

  def set_answer(virtual_user_id)
    Answer.find(virtual_user_id)
  end

  def user_answer_params
    params.require(:user_answer).permit(:belonging, :name, :address)
  end

  def check_answer(user_answer, answer, item)
    user_answer[item] = "" if user_answer[item].nil?
    if user_answer[item].empty?
      return "incorrect"
    elsif answer[item] == user_answer[item]
      return "correct"
    elsif answer[item].include?(user_answer[item])
      return "partial point"
    else
      return "incorrect"
    end
  end
end
