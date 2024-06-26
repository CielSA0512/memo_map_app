class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_post, only: [:edit, :update, :show, :destroy]
  before_action :move_to_index, only: [:edit, :destroy]

  def index
    @posts = Post.includes(:user)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to post_path(@post.id)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @post.destroy
    redirect_to root_path
  end

  def show
    @user = @post.user
  end

  private

  def post_params
    params.require(:post).permit(:address, :latitude, :longitude, :comment, :image).merge(user_id: current_user.id)
  end

  def set_post
    @post = Post.find(params[:id])
  end

  def move_to_index
    return if current_user.id == @post.user_id

    redirect_to root_path
  end
end
