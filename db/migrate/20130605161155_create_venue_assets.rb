class CreateVenueAssets < ActiveRecord::Migration
  def change
    create_table :venue_assets do |t|
      t.integer :venue_id
      t.string :type
      t.string :asset

      t.timestamps
    end
  end
end
