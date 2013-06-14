class CreateTourVisitors < ActiveRecord::Migration
  def change
    create_table :tour_visitors do |t|
      t.integer :tour_id
      t.integer :visitor_id
      t.integer :progress

      t.timestamps
    end
  end
end
