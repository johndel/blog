class Admin::UploadsController < Admin::AdminController
  before_action :set_admin_upload, only: [:destroy]

  def index
    @admin_uploads = Upload.order("updated_at DESC").page(params[:page]).per(10)
  end

  def new
    @admin_upload = Upload.new
  end

  def create
    @admin_upload = Upload.create(admin_upload_params)
    head :ok
  end

  def destroy
    @admin_upload.destroy
    redirect_to admin_uploads_path, notice: 'Upload was successfully deleted.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_upload
      @admin_upload = Upload.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_upload_params
      params[:upload].permit(:upload)
    end
end
