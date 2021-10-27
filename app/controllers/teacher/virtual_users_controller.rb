class Teacher::VirtualUsersController < ApplicationController
  def index
    @virtual_users = VirtualUser.all
  end

  def new
    @virtual_user = VirtualUser.new
  end

  def create
    @virtual_user = VirtualUser.new(name: params[:virtual_user][:name], sub_name: params[:virtual_user][:sub_name], catch_copy: params[:virtual_user][:catch_copy])
    if @virtual_user.save
      redirect_to teacher_virtual_users_path
    else
      render new_teacher_virtual_user_path
    end
  end

  def edit
    @virtual_user = VirtualUser.find(params[:id])
  end

  def update
    @virtual_user = VirtualUser.find(params[:id])
    if @virtual_user.update(name: params[:virtual_user][:name], sub_name: params[:virtual_user][:sub_name], catch_copy: params[:virtual_user][:catch_copy])
      flash[:success] = "更新しました．"
      redirect_to teacher_virtual_users_path
    else
      render 'edit'
    end
  end

  private
    def virtual_user_params
      params.permit(:name, :sub_name, :catch_copy)
    end
end
