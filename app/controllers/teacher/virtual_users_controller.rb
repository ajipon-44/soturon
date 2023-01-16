class Teacher::VirtualUsersController < ApplicationController
  before_action :set_virtual_user, only: %i[show edit update destroy]
	before_action :set_school_name, only: %i[new]

  def index
    @virtual_users = VirtualUser.all
  end

  def show; end

  def new
    @virtual_user = VirtualUser.new
  end

  def create
    @virtual_user = VirtualUser.new(
      name: params[:virtual_user][:name],
      sub_name: params[:virtual_user][:sub_name],
      catch_copy: params[:virtual_user][:catch_copy],
      image: params[:virtual_user][:image],
      belonging: params[:virtual_user][:belonging],
      real_name: params[:virtual_user][:real_name],
      address: 	params[:"geoapi-prefectures"] + params[:"geoapi-cities"]
    )
    if @virtual_user.save
      if params[:virtual_user][:image]
				set_image
			end
      redirect_to teacher_virtual_users_path
    else
      render new_teacher_virtual_user_path
    end
  end

  def edit; end

  def update
    if params[:virtual_user][:image]
			set_image
		end
    if @virtual_user.update(
      name: params[:virtual_user][:name],
      sub_name: params[:virtual_user][:sub_name],
      catch_copy: params[:virtual_user][:catch_copy],
      image: params[:virtual_user][:image],
      belonging: params[:virtual_user][:belonging],
      real_name: params[:virtual_user][:real_name],
      address: 	params[:"geoapi-prefectures"] + params[:"geoapi-cities"]
    )
      flash[:success] = '更新しました．'
      redirect_to teacher_virtual_users_path
    else
      render 'edit'
    end
  end

  def destroy
		binding.pry
    if @virtual_user.destroy
      if File.exist?("public/user_images/#{@virtual_user.id}.jpg")
        File.delete("public/user_images/#{@virtual_user.id}.jpg")
      end
      flash[:success] = '削除しました．'
      redirect_to teacher_virtual_users_path
    else
      render teacher_virtual_users_path
    end
  end

  private

  def virtual_user_params
    params.permit(:name, :sub_name, :catch_copy)
  end

  def set_virtual_user
    @virtual_user = VirtualUser.find(params[:id])
  end

  def set_image
    image = params[:virtual_user][:image]
    File.binwrite("public/user_images/#{@virtual_user.id}.jpg", image.read)
  end

	def set_school_name
		school_name_file = Roo::Excelx.new(Rails.root.join('school_name.xlsx'))
    school_name_sheet = school_name_file.sheet('Sheet1')
		@school_name = school_name_sheet.parse(school_name: '学校名')
	end
end
