class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :forecast, null: false, foreign_key: true

      t.timestamps
    end
  end
end
