# frozen_string_literal: true

class ApplicationController < ActionController::Base
<<<<<<< HEAD
  def new; end

  def create; end
=======
  protect_from_forgery with: :exception, prepend: true
  before_action :authenticate_teacher!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[first_name last_name email password password_confirmation])
    devise_parameter_sanitizer.permit(:sign_in, keys: %i[email password])
    devise_parameter_sanitizer.permit(:account_update,
                                      keys: %i[first_name last_name email password current_password
                                               password_confirmation])
  end
>>>>>>> authentication of teachers with devise
end
