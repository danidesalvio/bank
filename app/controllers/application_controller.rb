class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!

  protected
  # def user_params
  #   params.require(:user)(:sign_up).permit(:email, :password, :first_name, :last_name)
  # end
  # the code above explains what the code below is DOING

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
  end
end
