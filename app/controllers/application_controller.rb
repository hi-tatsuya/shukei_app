class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: :index
  before_action :configure_pemitted_parameters, if: :devise_controller?

  def configure_pemitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end

end
