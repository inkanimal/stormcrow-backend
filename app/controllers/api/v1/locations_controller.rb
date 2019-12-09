class Api::V1::LocationsController < ApplicationController

  def index
    
       @locations = Location.all
       render json: @locations

  end

  def show
    render json: @location
  end

  def create
    # @location = current.user.locations.build(loaction_params)
  end

  def update
  end

  def destroy
  end
end
