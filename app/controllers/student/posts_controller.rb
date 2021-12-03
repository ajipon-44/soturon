class Student::PostsController < ApplicationController
  before_action :set_post, only: [:show]
  before_action :set_replieds, only: [:show]
  before_action :set_action, only: [:index, :show]

  def index
    @posts = Post.all.order(date: :desc)
  end

  def show
  end

  private
  def set_post
    @post = Post.find(params[:id])
  end

  def set_replieds
    @replieds = Post.find(params[:id]).replieds
  end

  def set_action
    @action = params[:action]
    if @action == "index"
      @theme = "ホーム"
    elsif @action == "show"
      @theme = "投稿"
    end
  end
end
