class AddActivetotour < ActiveRecord::Migration
  def up
    add_column :tours, :active, :boolean
  end

  def down
  end
end
