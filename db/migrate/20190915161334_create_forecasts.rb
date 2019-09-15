class CreateForecasts < ActiveRecord::Migration[6.0]
  def change
    create_table :forecasts do |t|
      t.float :latitude
      t.float :longitude
      t.string :weatherData

      t.timestamps
    end
  end
end
