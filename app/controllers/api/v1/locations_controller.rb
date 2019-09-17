class Api::V1::LocationsController < ApplicationController

  def index
    if logged_in?
       @location = current_user.locations 
       render json: @locations
    else
      render json: {
        error: "You must be logged in to view saved locations."
      }
    end
  end

  def show
    render json: @location
  end

  def create
    @location = current.user.locations.build(loaction_params)
  end

  def update
  end

  def destroy
  end
end
