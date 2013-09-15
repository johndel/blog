class Front::PostsController < Front::FrontController
  before_action :tag_cloud, only: :index
  before_action :find_post, only: :show

  def index
    @post = Post.new(page_title: "JohnDel's Blog Posts")
    @search = Post.active.published.excluder.search(params[:q])
    @posts = @search.result.order("created_at DESC")

    if params[:tag]
      @posts = @search.result.tagged_with(params[:tag]).order("updated_at DESC").page(params[:page]).per(10)
    else
      @posts = @search.result.order("published DESC").page(params[:page]).per(10)
    end
  end

  def homepage
    @post = Post.tagged_with("homepage").first
    @posts = Post.active.published.excluder.order("published DESC").limit(3)
  end

  def show
  end

  def search
    @post = Post.new(page_title: "JohnDel's Blog Posts")
  end

  private
    def tag_cloud
      @tag_cloud = Post.tag_counts.reject { |tag| tag.name == "about" || tag.name == "homepage" }
    end

    def find_post
      @post = Post.active.published.friendly.find(params[:id])
      if request.path != post_path(@post)
        return redirect_to @post, status: :moved_permanently
      end
    end
end
