class PostsController < ApplicationController

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
    @bloggers = Blogger.all
    @destinations = Destination.all
  end

  def create
    @bloggers = Blogger.all
    @destinations = Destination.all
    @post = Post.new
  end
end
