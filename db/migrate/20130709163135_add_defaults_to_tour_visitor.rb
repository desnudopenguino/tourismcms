class AddDefaultsToTourVisitor < ActiveRecord::Migration
  def change
    remove_column :tour_visitors, :tour_id
    add_column :tour_visitors, :tour_id, :integer, :default => 0
  end
end
