class ArtistsController < ApplicationController
  before_filter :check_if_admin, :except => [:index]
  def index
    @artists = Artist.order(:name)
  end
  def new
    @artist = Artist.new
  end
  def create
    @artist = Artist.create(params[:artist])
    redirect_to(artists_path)
  end
  def edit
    @artist = Artist.find(params[:id])
    render :new
  end
  def update
    artist = Artist.find(params[:id])
    artist.update_attributes(params[:artist])
    redirect_to(artists_path)
  end
  def destroy
  end
end