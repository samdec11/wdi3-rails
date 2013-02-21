class GenresController < ApplicationController
  before_filter :check_if_admin, :except => [:index]
  def index
    @genres = Genre.order(:name)
  end
  def new
    @genre = Genre.new
  end
  def create
    @genre = Genre.create(params[:genre])
    redirect_to(genres_path)
  end
  def edit
    @genre = Genre.find(params[:id])
    render :new
  end
  def update
    genre = Genre.find(params[:id])
    genre.update_attributes(params[:genre])
    redirect_to(genres_path)
  end
  def destroy
  end
end