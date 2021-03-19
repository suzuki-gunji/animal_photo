class UsersController < ApplicationController
  def show
    @nickname = current_user.id
    @posts = current_user.posts
  end
end
