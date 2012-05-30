class PlantsObservationsController < ApplicationController
  respond_to :json

  def index
    @obs = PlantsObservation.find(:all)
    respond_with(@obs, :methods => [:image_big_url, :image_thumb_url])
  end

  def create
    @obs = PlantsObservation.create(params[:plants_observation])
    respond_with(@obs, :methods => [:image_big_url, :image_thumb_url])
  end

  def update
    @obs = PlantsObservation.find(params[:id])
    @obs.update_attributes(params[:plants_observation])
    respond_with(@obs, :methods => [:image_big_url, :image_thumb_url])
  end
end
