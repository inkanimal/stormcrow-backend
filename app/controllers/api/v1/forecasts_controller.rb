class Api::V1::ForecastsController < ApplicationController

  def index
    @forecasts = Forecast.all 
    render json: @forecasts
  end

  def show
  end
end
