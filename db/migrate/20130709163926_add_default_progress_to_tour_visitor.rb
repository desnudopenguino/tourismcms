class AddDefaultProgressToTourVisitor < ActiveRecord::Migration
  def change
    remove_column :tour_visitors, :progress
    add_column :tour_visitors, :progress, :integer, :default => 0
  end
end
