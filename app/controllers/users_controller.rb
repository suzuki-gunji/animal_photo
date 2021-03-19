class UsersController < ApplicationController
  def show
    @user = current_user
    @nickname = @user.nickname
    @posts = current_user.posts
  end

  def edit
    @user = current_user
  end

  def update
    @user = User.find(params[:id])

    if current_user == @user
      if @user.update(user_params)
        redirect_to user_path(current_user.id)
      else
        render :edit
      end
    else
      redirect_to root_path
    end
  end

  private
  def user_params
    params.require(:user).permit(:nickname, :profile)
  end
end