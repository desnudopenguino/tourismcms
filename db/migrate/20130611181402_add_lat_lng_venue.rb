class AddLatLngVenue < ActiveRecord::Migration
  def up
  end
    add_column :venue, :latitude, :float
    add_column :venue, :longitude, :float
  def down
  end
end
