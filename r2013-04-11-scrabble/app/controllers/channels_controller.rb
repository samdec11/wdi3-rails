class ChannelsController < ApplicationController
  def create
    Channel.create(params[:channel]) if Channel.where(params[:channel]).empty?
    @channels = Channel.order(:name)
    render :refresh
  end
  def refresh
    @channels = Channel.order(:name)
  end
end