class PlantsObservationsController < ApplicationController
  respond_to :json

  def index
    @obs = PlantsObservation.find(:all)
    respond_with(@obs)
  end

  def create
    @obs = PlantsObservation.create(params[:plants_observation])
    respond_with(@obs)
  end
end
