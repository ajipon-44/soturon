class Teacher::VirtualUsersController < ApplicationController
  before_action :set_virtual_user, only: [:show, :edit, :update, :destroy]

  def index
    @virtual_users = VirtualUser.all
  end

  def show
  end

  def new
    @virtual_user = VirtualUser.new
  end

  def create
    @virtual_user = VirtualUser.new(
      name: params[:virtual_user][:name],
      sub_name: params[:virtual_user][:sub_name],
      catch_copy: params[:virtual_user][:catch_copy]
    )
    if @virtual_user.save
      redirect_to teacher_virtual_users_path
    else
      render new_teacher_virtual_user_path
    end
  end

  def edit
  end

  def update
    if @virtual_user.update(
      name: params[:virtual_user][:name],
      sub_name: params[:virtual_user][:sub_name],
      catch_copy: params[:virtual_user][:catch_copy]
    )
      flash[:success] = "更新しました．"
      redirect_to teacher_virtual_users_path
    else
      render 'edit'
    end
  end

  def destroy
    if @virtual_user.destroy
      flash[:success] = "削除しました．"
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
end
