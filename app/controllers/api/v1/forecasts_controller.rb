class Api::V1::ForecastsController < ApplicationController

  def index
    @forecast = Forecast.all 
    render json: @forecasts
  end

  def show
  end
end
