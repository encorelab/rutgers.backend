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

  def update
    @obs = SoilWaterObservation.find(params[:id])
    @obs.update_attributes(params[:soil_water_observation])
    respond_with(@obs, :methods => [:image_big_url, :image_thumb_url])
  end
end
