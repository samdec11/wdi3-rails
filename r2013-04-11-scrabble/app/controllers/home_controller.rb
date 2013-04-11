class HomeController < ApplicationController
  def index
    @channels = Channel.order(:name)
    @channel = Channel.new
  end
  def send_message
    Pusher.trigger(params[:channel], 'chat', "#{@auth.username}: #{params[:message]}")
    render :nothing => true
  end
end