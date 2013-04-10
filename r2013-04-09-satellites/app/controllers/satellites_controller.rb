class SatellitesController < ApplicationController
  def index
    render json: {satellites: Satellite.all}
  end
end