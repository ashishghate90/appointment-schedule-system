class ApplicationController < ActionController::Base
	before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

	def after_sign_in_path_for(resource)
    if resource.has_role? :admin
  		return admin_root_url
  	elsif resource.has_role? :doctor
  		return doctor_root_url
  	else
  		return root_url
  	end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_in,
        keys: [:login, :password, :password_confirmation])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :first_name, :last_name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :first_name, :last_name])
  end
end