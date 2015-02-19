class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # GET /posts
  def index
    @posts = Post.all
  end

  # GET /posts/1
  def show
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  def create
    @post = Post.new(post_params)

    if @post.valid?
      @post.save
      flash[:notice] = "Post #@post.title was successfully created"
      redirect_to @post
    else
      render :new
    end
  end

  # PATCH/PUT /posts/1
  def update
    if @post.update(post_params)
      flash[:notice] = 'Post was successfully updated.'
      redirect_to @post
    else
      render :edit
    end
  end

  # DELETE /posts/1
  def destroy
    @post.destroy
    flash[:notice] = "Post was successfully deleted."
    redirect_to posts_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :body, :created_at, :updated_at)
    end
end
