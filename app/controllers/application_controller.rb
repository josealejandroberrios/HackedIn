class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :lastname])
  end

  def after_sign_in_path_for(resource)
    if current_user.role.name === "ADMINISTRADOR"
      skills_path(@skills)
    elsif current_user.role.name === "USUARIO"
      profile_path(current_user.profile)
    else
      new_profile_path
    end
  end
end
