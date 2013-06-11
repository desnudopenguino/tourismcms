class ToursRemoveLocationId < ActiveRecord::Migration
  def up
    remove_column :tours, :location_id
  end

  def down
  end
end
