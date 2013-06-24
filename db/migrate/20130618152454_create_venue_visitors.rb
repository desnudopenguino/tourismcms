class CreateVenueVisitors < ActiveRecord::Migration
  def change
    create_table :venue_visitors do |t|
      t.integer :venue_id
      t.integer :visitor_id

      t.timestamps
    end
  end
end
