class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new 
    end  
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to root_path
  end

  def like
    post = Post.find(params[:id])
    if post.liked_by?(current_user)
      like = current_user.likes.find_by(post_id: post.id)
      like.destroy
      render json: post.id
    else
      like = current_user.likes.new(post_id: post.id)
      like.save
      render json: post.id
    end
  end

  private

  def post_params
    params.require(:post).permit(:image, :title, :animal_type_id).merge(user_id: current_user.id)
  end
end
