class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_filter :configure_devise_params, if: :devise_controller?
  def configure_devise_params
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:email, :password, :password_confirmation, :name, :contact_no, :role)
    end
  end
  protect_from_forgery with: :exception
  after_filter :store_location

  def store_location
    # store last url as long as it isn't a /users path
    session[:previous_url] = request.fullpath unless (request.fullpath =~ /\/users\/sign_in/ || request.fullpath =~ /\/users\/sign_out/ || request.fullpath =~ /\/users\/sign_up/ || request.fullpath =~ /\/users\/edit/ || request.fullpath =~ /\/ajax_utilities/ || request.fullpath =~ /\/assets/)
  end

  def after_sign_in_path_for(resource)
    session[:previous_url] || root_path
  end

  def after_sign_out_path_for(resource)
    session[:previous_url] || root_path
  end
end
