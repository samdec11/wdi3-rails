class MovieController < ApplicationController
  def index
  end

  def lookup
    @title = params['title']
    @movie = HTTParty.get("http://www.omdbapi.com/?t=#{@title.split.join('+')}").gsub("'", "")
    @mhash = JSON(@movie)
  end
end