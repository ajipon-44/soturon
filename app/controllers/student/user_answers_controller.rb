class Student::UserAnswersController < ApplicationController
  before_action :set_virtual_users, only: %i[new create]
	before_action :set_school_name, only: %i[new]

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
	end

  private

  def set_virtual_users
    @virtual_users = VirtualUser.all
  end

  def set_image
    image = params[:user_answer][:image]
    File.binwrite("public/user_answers/#{@user_answer.user_id}.jpg", image.read)
  end

	def set_school_name
		school_name_file = Roo::Excelx.new(Rails.root.join('school_name.xlsx'))
    school_name_sheet = school_name_file.sheet('Sheet1')
		@school_name = school_name_sheet.parse(school_name: '学校名')
	end
end
