class AddOrderMedia < ActiveRecord::Migration
  def up
    add_column :media, :order, :integer
  end

  def down
  end
end
