class AlbumsController < ApplicationController
  before_filter :check_if_admin, :except => [:index]
  def index
    @albums = Album.order(:name)
  end
  def new
    @album = Album.new
  end
  def create
    @album = Album.create(params[:album])
    redirect_to(albums_path)
  end
  def edit
    @album = Album.find(params[:id])
    render :new
  end
  def update
    album = Album.find(params[:id])
    album.update_attributes(params[:album])
    redirect_to(albums_path)
  end
  def destroy
  end
end