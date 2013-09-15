class Admin::MessagesController < Admin::AdminController
  before_action :set_admin_message, only: [:edit, :update, :destroy]

  def index
    @admin_messages = Message.order("updated_at DESC").page(params[:page]).per(10)
  end

  def new
    @admin_message = Message.new
  end

  def edit
  end

  def create
    @admin_message = Message.new(admin_message_params)
    if @admin_message.save
      redirect_to admin_messages_path, notice: 'Message was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @admin_message.update(admin_message_params)
      redirect_to admin_messages_path, notice: 'Message was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @admin_message.destroy
    redirect_to admin_messages_path, notice: 'Message was successfully deleted.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_message
      @admin_message = Message.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_message_params
      params[:message].permit(:email, :title, :body)
    end
end
