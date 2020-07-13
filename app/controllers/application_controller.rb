class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: [:index]
  skip_before_action :verify_authenticity_token, only: :create
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
end
