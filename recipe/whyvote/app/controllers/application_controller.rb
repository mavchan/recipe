class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_devise_permitted_parameters, if: :devise_controller?
  after_filter :store_location

  ##
  # Stores a user's current location within their session object.

  def store_location
    if (request.fullpath != "/users/sign_in" &&
        request.fullpath != "/users/sign_up" &&
        request.fullpath != "/users/password" &&
        request.fullpath != "/users/sign_out" &&
        !(request.fullpath.include? 'vote') &&
        !(request.fullpath.include? 'upvote') &&
        !(request.fullpath.include? 'favourite') &&
        !request.xhr?)
      session[:previous_url] = request.fullpath
    end
  end

  ##
  # Returns the last url stored in the user's session object.

  def after_sign_in_path_for(resource)
    session[:previous_url] || root_path
  end

  def after_update_path_for(resource)
    user_path(resource)
  end
  ##
  # Sets required fields for new +Users+.

  def configure_devise_permitted_parameters
    registration_params = [:first_name, :last_name, :email, :password, :password_confirmation]

    if params[:action] == 'update'
      devise_parameter_sanitizer.for(:account_update) {
          |u| u.permit(registration_params << :current_password)
      }
    elsif params[:action] == 'create'
      devise_parameter_sanitizer.for(:sign_up) {
          |u| u.permit(registration_params)
      }
    end
  end
end