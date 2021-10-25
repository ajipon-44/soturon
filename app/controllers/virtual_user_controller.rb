class VirtualUserController < ApplicationController
  def index
    @virtual_users = VirtualUser.all
  end

  def new
  end

  def create
    @virtual_user = VirtualUser.new(virtual_user_params)
    if @virtual_user.save
      redirect_to virtual_user_index_path
    else
      render virtual_user_new_path
    end
  end

  def edit
    @virtual_user = VirtualUser.find(params[:id])
  end

  def update
    @virtual_user = VirtualUser.find(params[:id])
    if @virtual_user.update(name: params[:virtual_user][:name], sub_name: params[:virtual_user][:sub_name], catch_copy: params[:virtual_user][:catch_copy])
      flash[:success] = "更新しました．"
      redirect_to virtual_user_index_path
    else
      render virtual_user_edit_path
    end
  end

  private
    def virtual_user_params
      params.permit(:name, :sub_name, :catch_copy)
    end
end
