class SetDefaultVenueActive < ActiveRecord::Migration
  def up
    remove_column :tours, :active
    add_column :tours, :active, :boolean, :default => false
  end

  def down
  end
end
