class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]

  # GET /posts
  def index
    @posts = Post.where(status: Post::LIVE).order(created_at: :desc)
                   .page(params[:page])
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
      redirect_to @post, notice: "Post #{@post.title} was successfully created"
    else
      render :new
    end
  end

  # PATCH/PUT /posts/1
  def update
    if @post.update(post_params)
      redirect_to @post, notice: 'Post was successfully updated.'
    else
      render :edit
    end
  end

  # GET /posts/tagged/tag
  def tagged
    @posts = Post.tagged_with(params[:tag])
  end

  # DELETE /posts/1
  def destroy
    @post.status = Post::DELETED
    @post.save
    redirect_to posts_url, notice: 'Post was successfully deleted.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :body, :created_at,
                                   :updated_at, :tag_list)
    end
end
