class CreateTimeVisitors < ActiveRecord::Migration
  def change
    create_table :time_visitors do |t|
      t.integer :tour_visitor_id
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
