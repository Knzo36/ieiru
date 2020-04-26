class CreateGeoLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :geo_locations do |t|
      t.double :latitude
      t.double :longitude

      t.timestamps
    end
  end
end
