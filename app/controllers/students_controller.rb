class StudentsController < ApplicationController
  def index
    @posts = Post.all
  end
end
