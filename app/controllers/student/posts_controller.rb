class Student::PostsController < ApplicationController
  before_action :set_post, only: [:show]
  before_action :set_replieds, only: [:show]
  before_action :set_action, only: [:index, :show]

  def index
    @posts = Post.all.where(display_flag: 1).order(date: :desc)
  end

  def show; end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def set_replieds
    @replieds = Post.find(params[:id]).replieds
  end

  def set_action
    @action = params[:action]
		case @action
		when 'index' then
      @theme = 'ホーム'
		when 'show' then
			@theme = '投稿'
		end
  end
end
