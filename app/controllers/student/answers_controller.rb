class Student::AnswersController < ApplicationController
  before_action :set_virtual_users, only: [:show]
  before_action :set_answers, only: [:result]

  def show
  end

  def answer_check
    $result = []
    params[:danger_level].each do |key, value|
      set_answer(key)
      buf = [key.to_i, value.to_i]
      if value == @answer.danger_level
        buf.push(1)
        $result.push(buf)
      else
        buf.push(0)
        $result.push(buf)
      end
    end
    redirect_to student_answer_result_path
  end

  def result
    @num_of_correct = 0
    $result.each do |result|
      if result[2] == 1
        @num_of_correct += 1
      end
    end
  end

  private
  def set_virtual_users
    @virtual_users = VirtualUser.all
  end

  def set_answers
    @answers = Answer.all
  end

  def set_answer(answer_id)
    @answer = Answer.find_by(virtual_user_id: answer_id)
  end
end
