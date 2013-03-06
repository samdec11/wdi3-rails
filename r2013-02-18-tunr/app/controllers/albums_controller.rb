class AlbumsController < ApplicationController
  before_filter :check_if_admin, :except => [:index, :show, :purchase]
  def index
    @albums = Album.order(:name)
  end
  def new
    @album = Album.new
  end
  def create
    @album = Album.new(params[:album])
    if @album.save
      redirect_to(albums_path)
    else
      render :new
    end
  end
  def edit
    @album = Album.find(params[:id])
    render :new
  end
  def update
    @album = Album.find(params[:id])
    if @album.update_attributes(params[:album])
      redirect_to(albums_path)
    else
      render :new
    end
  end
  def purchase
    album = Album.find(params[:id])
    if album.cost(@auth.songs) <= @auth.balance
      @auth.balance -= album.cost(@auth.songs)
      @auth.save
      @auth.albums << album
    end
    redirect_to(album)
  end
  def show
    @album = Album.find(params[:id])
  end
  def destroy
  end
end