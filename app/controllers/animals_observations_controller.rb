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
end