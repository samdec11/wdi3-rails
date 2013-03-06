class SongsController < ApplicationController
    before_filter :check_if_admin, :except => [:index, :show, :purchase, :refund]
    before_filter :check_log, :only => [:show]
  def index
    @songs = Song.order(:name)
  end
  def new
    @song = Song.new
  end
  def create
    @song = Song.new(params[:song])
    if @song.save
      redirect_to(songs_path)
    else
      render :new
    end
  end
  def edit
    @song = Song.find(params[:id])
    render :new
  end
  def update
    @song = Song.find(params[:id])
    if @song.update_attributes(params[:song])
      redirect_to(songs_path)
    else
      render :new
    end
  end
  def show
    @song = Song.find(params[:id])
  end
  def purchase
    @song = Song.find(params[:id])
    @auth.balance -= @song.cost
    @auth.save
    params["song"]["mixtape_ids"].each do |id|
      @song.mixtapes << Mixtape.find(id.to_i)
    end
    redirect_to(song_path(@song))
  end
  def refund
    song = Song.find(params[:id])
    if song.in?(@auth.songs)
      @auth.balance += (song.cost * 0.7)
      @auth.save
      @auth.mixtapes. each do |mixtape|
        mixtape.songs.delete(song)
      end
    end
        redirect_to(songs_path)
  end
  def destroy
  end
  def check_log
    redirect_to(songs_path) if @auth.nil?
  end
end