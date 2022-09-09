class Teacher::PostsController < ApplicationController
  #before_action :set_virtual_user, only: [:index, :new]
  before_action :set_time, only: %i[create update]
  before_action :set_virtual_users, only: %i[new create edit update]
  before_action :set_post, only: %i[edit update destroy]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(
      virtual_user_id: params[:post][:virtual_user_id],
      body: params[:post][:body],
      image1: params[:post][:image1],
      image2: params[:post][:image2],
      image3: params[:post][:image3],
      image4: params[:post][:image4],
      date: @time,
      display_flag: 1
    )
    if @post.save
      set_image
      flash[:success] = "作成しました．"
      redirect_to teacher_posts_path
    else
      render new_teacher_post_path
    end
  end

  def edit; end

  def update
    set_image
    if @post.update(
      virtual_user_id: params[:post][:virtual_user_id],
      body: params[:post][:body],
      image1: params[:post][:image1],
      image2: params[:post][:image2],
      image3: params[:post][:image3],
      image4: params[:post][:image4],
      date: @time,
      display_flag: params[:post][:display_flag]
    )
      flash[:success] = '更新しました．'
      redirect_to teacher_posts_path
    else
      render 'edit'
    end
  end

  def destroy
    if @post.destroy
      flash[:success] = '削除しました．'
      redirect_to teacher_posts_path
    else
      render teacher_posts_path
    end
  end

  private

  def set_time
    @time = Date.new(params[:post]['date(1i)'].to_i, params[:post]['date(2i)'].to_i, params[:post]['date(3i)'].to_i)
  end

  def set_virtual_users
    @virtual_users = VirtualUser.all
  end

  def set_post
    @post = Post.find(params[:id])
  end

  def set_image
    @images = [params[:post][:image1], params[:post][:image2], params[:post][:image3], params[:post][:image4]]
    @images = @images.compact
    if @images.!empty?
      Dir.mkdir("./public/post_images/#{@post.id}") unless Dir.exist?("./public/post_images/#{@post.id}")
      @images.each.with_index(1) do |image, i|
        File.binwrite("public/post_images/#{@post.id}/#{i}.jpg", image.read)
      end
    end
  end

  # def set_virtual_user
  #   @virtual_user = VirtualUser.find(params[:virtual_user_id])
  # end

  # def post_params
  #   params.permit(:name, :sub_name, :catch_copy)
  # end
end
