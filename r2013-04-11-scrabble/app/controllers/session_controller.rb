class SessionController < ApplicationController
  def create
    user = User.find_or_create_by_username(params[:username])
    session[:user_id] = user.id
    authenticate
    user.is_online = true
    user.save
    @channels = Channel.order(:name)
    @channel = Channel.new
  end
  def destroy
    @auth.is_online = false
    @auth.save
    session[:user_id] = nil
    authenticate
    render :create
  end
end