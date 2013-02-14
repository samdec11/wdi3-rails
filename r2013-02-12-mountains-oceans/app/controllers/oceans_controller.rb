class OceansController < ApplicationController
  def index
    @oceans = Ocean.all
  end

  def new
  end

  def create
    Ocean.create(params[:ocean])
    redirect_to(oceans_path)
  end

  def destroy
    ocean = Ocean.find(params[:id])
    ocean.delete
    redirect_to(oceans_path)
  end

  def edit
    @ocean = Ocean.find(params[:id])
  end
end