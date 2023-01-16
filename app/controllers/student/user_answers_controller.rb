class Student::UserAnswersController < ApplicationController
  before_action :set_virtual_users, only: %i[new show check_answer]

  def new
  end

	def show
		@user_answer = params[:user_answer]
		@result = params[:result]
		@number_of_correct = 0
		@number_of_correct += params[:result].grep(["true"]).count
	end

	def check_answer
		@user_answer = [
			[params[:belonging_1], params[:name_1], params[:address_1]],
		  [params[:belonging_2], params[:name_2], params[:address_2]],
		  [params[:belonging_3], params[:name_3], params[:address_3]],
		  [params[:belonging_4], params[:name_4], params[:address_4]],
		  [params[:belonging_5], params[:name_5], params[:address_5]],
	  ]
		@result = []
		@virtual_users.each_with_index do |virtual_user, i|
			result = []
			result.push(check_belonging(virtual_user.belonging, @user_answer[i][0]))
			result.push(check_name(virtual_user.real_name, @user_answer[i][1]))
			result.push(check_address(virtual_user.address, @user_answer[i][2]))
			@result.push(result)
		end

		redirect_to student_user_answer_url("user_answer" => @user_answer, result: @result)
	end

  private

  def set_virtual_users
    @virtual_users = VirtualUser.all
  end

	def check_belonging(belonging, user_answer_belonging)
		if belonging == user_answer_belonging
		  return true
		else
			return false
		end
	end

	def check_name(name, user_answer_name)
		if name == user_answer_name
		  return true
		else
			return false
		end
	end

	def check_address(address, user_answer_address)
		if address == user_answer_address
		  return true
		else
			return false
		end
	end
end
