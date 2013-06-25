class DropAttractionIdFromMedia < ActiveRecord::Migration
  def up
    remove_column :media, :attraction_id
  end

  def down
  end
end
