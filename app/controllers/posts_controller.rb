class PostsController < ApplicationController
  def index
    #메인 화면이며 모든 게시글을 보여줄 것임.
    @posts = Post.all.reverse
  end

  def new
    #새 글을 작성하는 곳
  end

  def create
    Post.create(
      title: params[:title],
      content: params[:content]
    )
    redirect_to '/'
  end

  def update
    post = Post.find(params[:id])

    post.update(
      title: params[:title],
      content: params[:content]
    )

    redirect_to '/'
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to '/'
  end

  def edit
    @post = Post.find(params[:id])
  end
end
