class PostsController < ApplicationController
  def new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to user_path
    else
      render :new
    end
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(article_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def index
    @post = Post.all
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to post_path
  end

  private
  def post_params
    params.require(:post).permit(:title, :date, :calories, :description)
  end
end
