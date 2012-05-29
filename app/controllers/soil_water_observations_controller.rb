class SoilWaterObservationsController < ApplicationController
  respond_to :json

  def index
    @obs = SoilWaterObservation.find(:all)
    respond_with(@obs)
  end

  def create
    @obs = SoilWaterObservation.create(params[:soil_water_observation])
    respond_with(@obs)
  end
end
