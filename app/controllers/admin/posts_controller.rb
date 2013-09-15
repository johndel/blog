class Admin::PostsController < Admin::AdminController
  before_action :set_admin_post, only: [:edit, :update, :destroy]

  def index
    if params[:tag]
      @admin_posts = Post.tagged_with(params[:tag]).includes(:tags).order("updated_at DESC").page(params[:page]).per(10)
    else
      @admin_posts = Post.includes(:tags).order("updated_at DESC").page(params[:page]).per(10)
    end
  end

  def new
    @admin_post = Post.new
  end

  def edit
  end

  def create
    @admin_post = Post.new(admin_post_params)
      if @admin_post.save
        check_button_clicked?(params[:commit], @admin_post)
      else
        render action: 'new'
      end
  end

  def update
    if @admin_post.update(admin_post_params)
      check_button_clicked?(params[:commit], @admin_post)
    else
      render action: 'edit'
    end
  end

  def destroy
    @admin_post.destroy
    redirect_to admin_posts_url
  end

  private
    def check_button_clicked?(button_label, post)
      if button_label == "Preview Post"
        redirect_to post_path(post)
      else
        redirect_to admin_posts_path, notice: 'Post was successfully created.'
      end
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_admin_post
      @admin_post = Post.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_post_params
      params[:post].permit(:page_title, :meta_description, :slug, :active, :body, :published, :user_id, :tag_list, upload_attributes: [:upload])
    end
end
