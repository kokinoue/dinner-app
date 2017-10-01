class ApplicationController < ActionController::Base
  add_flash_types :success, :info, :warning, :danger
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

def after_sign_in_path_for (resource)
  user_path(current_user.id)
end
def after_sign_out_path_for (resource)
  root_path
end

protected
def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :family_group_id, :user_id])
  devise_parameter_sanitizer.permit(:account_update, keys: [:name])
end
end
