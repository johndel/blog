class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  layout :check_devise_layout

  def check_devise_layout
    "front" if devise_controller?
  end

end
