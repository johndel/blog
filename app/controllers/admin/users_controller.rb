class Admin::UsersController < Admin::AdminController
  before_action :set_admin_user, only: [:edit, :update, :destroy]

  def index
    @admin_users = User.all
  end

  def new
    @admin_user = User.new
  end

  def edit
  end

  def create
    @admin_user = User.new(admin_user_params)
    if @admin_user.save
      redirect_to admin_users_path, notice: 'User was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @admin_user.update(admin_user_params)
      redirect_to admin_users_path, notice: 'User was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @admin_user.destroy
    redirect_to admin_users_path, notice: 'User was successfully deleted.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_user
      @admin_user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_user_params
      params[:user].permit(:email, :password, :password_confirmation)
    end
end
