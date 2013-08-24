class DeleteActiveFromVenue < ActiveRecord::Migration
  def up
    remove_column :venues, :active
  end

  def down
  end
end
