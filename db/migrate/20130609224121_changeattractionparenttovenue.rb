class Changeattractionparenttovenue < ActiveRecord::Migration
  def up
    rename_column :attractions, :tour_id, :venue_id
  end

  def down
  end
end
