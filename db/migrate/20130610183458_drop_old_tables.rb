class DropOldTables < ActiveRecord::Migration
  def up
    drop_table :assetvenues
    drop_table :attractions_tours
    drop_table :locations
    drop_table :users
    drop_table :venue_assets
  end

  def down
  end
end
