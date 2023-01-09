class Student::UserAnswersController < ApplicationController
  before_action :set_virtual_users, only: %i[new check_answer]

  def new
  end

  def create
    @user_answer = UserAnswer.new(user_id: params[:user_answer][:user_id], image: params[:user_answer][:image])
    if params[:user_answer][:image]
      set_image
    end
    @user_answer.save!
  end

	def check_answer
		# 採点結果をresultにbooleanで入れる
		@result = []
		@virtual_users.each.with_index(1) do |virtual_user, i|
			@result.push(check_belonging(virtual_user.belonging, params, i))
			@result.push(check_name(virtual_user.real_name, params, i))
			@result.push(check_address(virtual_user.address, params, i))
		end
	end

  private

  def set_virtual_users
    @virtual_users = VirtualUser.all
  end

  def set_image
    image = params[:user_answer][:image]
    File.binwrite("public/user_answers/#{@user_answer.user_id}.jpg", image.read)
  end

	def check_belonging(belonging, params, i)
		if belonging == params[:"belonging_#{i}"]
		  return true
		else
			return false
		end
	end

	def check_name(name, params, i)
		if name == params[:"name_#{i}"]
		  return true
		else
			return false
		end
	end

	def check_address(address, params, i)
		if address == params[:"address_#{i}"]
		  return true
		else
			return false
		end
	end
end
