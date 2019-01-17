class ApplicationController < ActionController::Base
      before_action :configure_permitted_parameters, if: :devise_controller?


  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :surname, :birthday_date, :email, :password, :password_confirmation, :phone, :address])
  end

  def after_sign_in_path_for(resource)
    stored_location_for(resource) ||
      if resource.is_a?(User)
        root_path
      else
        root_path
      end
  end
end
