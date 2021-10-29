class Teacher::PostsController < ApplicationController
  #before_action :set_virtual_user, only: [:index, :new]
  before_action :set_time, only: [:create, :update]
  before_action :set_virtual_users, only: [:new, :create, :edit, :update]
  before_action :set_post, only: [:edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(virtual_user_id: params[:post][:virtual_user_id], body: params[:post][:body], image: params[:post][:image], date: @time, good: params[:post][:good], retweet: params[:post][:retweet], quote_tweet: params[:post][:quote_tweet])
    if @post.save
      flash[:success] = "作成しました．"
      redirect_to teacher_posts_path
    else
      render new_teacher_post_path
    end
  end

  def edit
  end

  def update
    if @post.update(virtual_user_id: params[:post][:virtual_user_id], body: params[:post][:body], image: params[:post][:image], date: @time, good: params[:post][:good], retweet: params[:post][:retweet], quote_tweet: params[:post][:quote_tweet])
      flash[:success] = "更新しました．"
      redirect_to teacher_posts_path
    else
      render 'edit'
    end
  end

  def destroy
    if @post.destroy
      flash[:success] = "削除しました．"
      redirect_to teacher_posts_path
    else
      render teacher_posts_path
    end
  end

  private
  def set_time
    @time = Date.new(params[:post]["date(1i)"].to_i,params[:post]["date(2i)"].to_i,params[:post]["date(3i)"].to_i)
  end

  def set_virtual_users
    @virtual_users = VirtualUser.all
  end

  def set_post
    @post = Post.find(params[:id])
  end

  # def set_virtual_user
  #   @virtual_user = VirtualUser.find(params[:virtual_user_id])
  # end

  # def post_params
  #   params.permit(:name, :sub_name, :catch_copy)
  # end
end
