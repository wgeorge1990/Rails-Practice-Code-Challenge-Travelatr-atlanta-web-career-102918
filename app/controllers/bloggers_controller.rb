class BloggersController < ApplicationController

  def index
    @bloggers = Blogger.all
  end

  def show
    @blogger = Blogger.find(params[:id])
    @top_post = Post.find(@blogger.top_post)
  end

  def new
    @blogger = Blogger.new
  end

  def create
    @blogger = Blogger.new(blogger_params)
    if @blogger.save
      redirect_to blogger_path(@blogger)
    else
      render :new
    end
  end



  private
    def blogger_params
      params.permit(:name, :bio, :age)
    end

end
