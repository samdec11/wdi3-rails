class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authentication
  private
  def authentication
    @auth = User.find(session[:user_id]) if session[:user_id].present?
  end
  def ensure_logged_in
    redirect_to(login_path) if @auth.nil?
  end
end
