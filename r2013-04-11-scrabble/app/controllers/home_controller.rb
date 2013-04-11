class HomeController < ApplicationController
  def index
    @channels = Channel.order(:name)
    @channel = Channel.new
  end
end