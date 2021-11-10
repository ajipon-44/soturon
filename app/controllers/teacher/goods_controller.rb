class Teacher::GoodsController < ApplicationController
  before_action :set_virtual_users, only: [:new, :create, :edit, :update]
  before_action :set_posts, only: [:new, :create, :edit, :update]
  before_action :set_good, only: [:edit, :update, :destroy]

  def index
    @goods = Good.all
  end

  def new
    @good = Good.new
  end

  def create
    @good = Good.new(virtual_user_id: params[:good][:virtual_user_id], post_id: params[:good][:post_id])
    if @good.save
      flash[:success] = "作成しました．"
      redirect_to teacher_goods_path
    else
      render new_teacher_good_path
    end
  end

  def edit
  end

  def update
    if @good.update(virtual_user_id: params[:good][:virtual_user_id], post_id: params[:good][:post_id])
      flash[:success] = "更新しました．"
      redirect_to teacher_goods_path
    else
      render 'edit'
    end
  end

  def destroy
    if @good.destroy
      flash[:success] = "削除しました．"
      redirect_to teacher_goods_path
    else
      render teacher_goods_path
    end
  end

  private
  def set_virtual_users
    @virtual_users = VirtualUser.all
  end

  def set_posts
    @posts = Post.all
  end

  def set_good
    @good = Good.find(params[:id])
  end
end
