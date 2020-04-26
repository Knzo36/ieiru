class CreateGeoLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :geo_locations do |t|
      t.float :latitude
      t.float :longitude
      t.references :user

      t.timestamps
    end
  end
end
