class WeatherObservationsController < ApplicationController
  respond_to :json

  def index
    @obs = WeatherObservation.find(:all)
    respond_with(@obs, :methods => [:image_big_url, :image_thumb_url])
  end

  def create
    @obs = WeatherObservation.create(params[:weather_observation])
    respond_with(@obs, :methods => [:image_big_url, :image_thumb_url])
  end

  def update
    @obs = WeatherObservation.find(params[:id])
    @obs.update_attributes(params[:weather_observation])
    respond_with(@obs, :methods => [:image_big_url, :image_thumb_url])
  end
end
