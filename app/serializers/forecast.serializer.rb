class ForecastSerializer
    include FastJsonapi::ObjectSerializer
    attributes :latitude, :longitude, :weather_data
  end