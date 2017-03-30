class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to user_path
    else
      render :new
    end
  end

  def show
    @post = Post.all
  end

  private
  def post_params
    params.require(:post).permit(:title, :date, :calories, :description)
  end
end
