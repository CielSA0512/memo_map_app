class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :show]
  before_action :authenticate_user!, except: :show
  before_action :move_to_index, only: :edit

  def edit
  end

  def update
    user = User.find(params[:id])
    if user.update(user_params)
      redirect_to user_path(user.id)
    else
      render :edit
    end
  end

  def show
    @posts = @user.posts.order('created_at DESC')
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:nickname, :email, :profile, :hobby)
  end

  def move_to_index
    return if current_user.id == @user.id

    redirect_to root_path
  end
end
