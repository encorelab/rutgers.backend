class WeatherObservationsController < ApplicationController
  respond_to :json

  def index
    @obs = WeatherObservation.find(:all)
    respond_with(@obs)
  end

  def create
    @obs = WeatherObservation.create(params[:weather_observation])
    respond_with(@obs)
  end
end
