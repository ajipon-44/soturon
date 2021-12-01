class Student::VirtualUsersController < ApplicationController
  before_action :set_virtual_user, only: [:show]
  before_action :set_virtual_users_posts, only: [:show]

  def show
  end

  private
  def set_virtual_user
    @virtual_user = VirtualUser.find(params[:id])
  end

  def set_virtual_users_posts
    @posts = @virtual_user.posts.order(date: :desc)
  end
end
