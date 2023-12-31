class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
protected
def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up)  { |u| u.permit(:full_name, :address, :mobile_no,  :email, :password, :password_confirmation, roles: [] ) }
end

end