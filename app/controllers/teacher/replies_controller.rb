class Teacher::RepliesController < ApplicationController
  before_action :set_posts, only: [:new, :create, :edit, :update]
  before_action :set_reply, only: [:edit, :update, :destroy]

  def index
    @replies = Reply.all
  end

  def new
    @reply = Reply.new
  end

  def create
    @reply = Reply.new(post_id: params[:reply][:post_id], reply_id: params[:reply][:reply_id])
    if @reply.save
      flash[:success] = "作成しました．"
      redirect_to teacher_replies_path
    else
      binding.pry
      render new_teacher_reply_path
    end
  end

  def edit
  end

  def update
    if @reply.update(post_id: params[:reply][:post_id], reply_id: params[:reply][:reply_id])
      flash[:success] = "更新しました．"
      redirect_to teacher_replies_path
    else
      render 'edit'
    end
  end

  def destroy
    if @reply.destroy
      flash[:success] = "削除しました．"
      redirect_to teacher_replies_path
    else
      render teacher_replies_path
    end
  end

  private
  def set_posts
    @posts = Post.all
  end

  def set_reply
    @reply = Reply.find(params[:id])
  end
end
