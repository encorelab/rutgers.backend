class AnimalsObservationsController < ApplicationController
  respond_to :json

  def index
    @obs = AnimalsObservation.find(:all)
    respond_with(@obs)
  end

  def create
    @obs = AnimalsObservation.create(params[:animals_observation])
    respond_with(@obs)
  end

  def update
    @obs = AnimalsObservation.find(params[:id])
    @obs.update_attributes(params[:animals_observation])
    respond_with(@obs, :methods => [:image_big_url, :image_thumb_url])
  end
end
