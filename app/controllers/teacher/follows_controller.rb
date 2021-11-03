class Teacher::FollowsController < ApplicationController
  before_action :set_virtual_users, only: [:new, :create, :edit, :update]
  before_action :set_follow, only: [:edit, :update, :destroy]

  def index
    @follows = Follow.all
  end

  def new
    @follow = Follow.new
  end

  def create
    @follow = Follow.new(virtual_user_id: params[:follow][:virtual_user_id], follower_id: params[:follow][:follower_id])
    if @follow.save
      flash[:success] = "作成しました．"
      redirect_to teacher_follows_path
    else
      render new_teacher_follow_path
    end
  end

  def edit
  end

  def update
    if @follow.update(virtual_user_id: params[:follow][:virtual_user_id], follower_id: params[:follow][:follower_id])
      flash[:success] = "更新しました．"
      redirect_to teacher_follows_path
    else
      render 'edit'
    end
  end

  def destroy
    if @follow.destroy
      flash[:success] = "削除しました．"
      redirect_to teacher_follows_path
    else
      render teacher_follows_path
    end
  end

  private
  def set_virtual_users
    @virtual_users = VirtualUser.all
  end

  def set_follow
    @follow = Follow.find(params[:id])
  end
end
