class Student::FollowsController < ApplicationController
  before_action :set_virtual_user, only: [:show]

  def show
    if params[:click] == "followings"
      @follow = @virtual_user.followings
      @theme = "フォロー中"
    else
      @follow = @virtual_user.followers
      @theme = "フォロワー"
    end
  end

  private
  def set_virtual_user
    @virtual_user = VirtualUser.find(params[:id])
  end
end
