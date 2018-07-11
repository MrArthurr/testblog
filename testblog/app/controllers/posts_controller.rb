class PostsController <ApplicationController
  def index
    @post = Post.all
  end

  def show
   @post = Post.find(params[:id]) #shows post of your choice
  end
  def new
    @post = Post.new #add new post
  end

  def create
    @post = Post.new(posts_params)
    if @post.save
      redirect_to post_path, success: 'Author was created.' #if save=true redirecting to List of all posts
    else
      render :new #if save=false render new view of adding new post
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(posts_params)
      redirect_to posts_path, notice: 'Post was updated.'
    else
      render :edit
    end
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    if redirect_to posts_path, notice: 'Post was deleted.'
    else
      redirect_to posts_path, alert: 'There was an error.'
    end
  end
  private

  def posts_params
    params.require(:post).permit(:title, :content)
  end
end
