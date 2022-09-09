class Student::VirtualUsersController < ApplicationController
  before_action :set_virtual_user, only: %i[show]
  before_action :set_virtual_users_posts, only: %i[show]
  before_action :set_action, only: %i[show]

  def show; end

  private

  def set_virtual_user
    @virtual_user = VirtualUser.find(params[:id])
  end

  def set_virtual_users_posts
    @posts = @virtual_user.posts.order(date: :desc)
  end

  def set_action
    @action = params[:action]
    if @action == 'show'
      @theme = @virtual_user.name
    end
  end
end
