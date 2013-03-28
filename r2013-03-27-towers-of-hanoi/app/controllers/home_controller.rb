class HomeController < ApplicationController
  def index
  end
  def make
    @blocks = params[:num].to_i
  end
  def reset
  end
end