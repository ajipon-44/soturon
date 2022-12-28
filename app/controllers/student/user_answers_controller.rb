class Student::UserAnswersController < ApplicationController
  before_action :set_virtual_users, only: %i[new create]
	# before_action :set_school_name, only: %i[new]
	before_action :user_answer_params, only: %i[:check_answer]

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

	def check_answer
		user_answers = params[:user_answer].select{|key, value| key.to_i > 0}
    user_answers.each do |key, value|
      answer = set_answer(key)
      result_belonging = check_answer(value, answer, "belonging")
      result_name = check_answer(value, answer, "name")
      result_address = check_answer(value, answer, "address")
      UserAnswer.create!(
        belonging: value[:belonging],
        name: value[:name],
        address: value[:address]
      )
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

	# def set_school_name
	# 	school_name_file = Roo::Excelx.new(Rails.root.join('school_name.csv'))
  #   school_name_sheet = school_name_file.sheet('Sheet1')
	# 	@school_name = school_name_sheet.parse(school_name: '学校名')
	# 	@school_name = CSV.read('school_name.csv')
	# end

	def user_answer_params
    params.require(:user_answer).permit(:belonging, :name, :address)
  end

  # def check_answer(user_answer, answer, item)
  #   user_answer[item] = "" if user_answer[item].nil?
  #   if user_answer[item].empty?
  #     return "incorrect"
  #   elsif answer[item] == user_answer[item]
  #     return "correct"
  #   elsif answer[item].include?(user_answer[item])
  #     return "partial point"
  #   else
  #     return "incorrect"
  #   end
  # end
end
