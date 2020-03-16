class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:last_name,:first_name])
    devise_parameter_sanitizer.permit(:invite, keys: [:email,:last_name,:first_name,:company_id,:approver])
    devise_parameter_sanitizer.permit(:accept_invitation, keys: [:password, :password_confirmation, :invitation_token])
  end
end
