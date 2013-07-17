class DropRadiusFromAttraction < ActiveRecord::Migration
  def up
    remove_column :attractions, :radius
  end

  def down
  end
end
