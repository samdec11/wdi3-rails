class SessionController < ApplicationController
  def new
  end
  def create
    user = User.where(:email => params[:email]).first
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
    else
      session[:user_id] = nil
    end
    authentication
  end
  def destroy
    session[:user_id] = nil
    @auth = nil
    authentication
  end
end