class RenameMediaType < ActiveRecord::Migration
  def up
    rename_column :media, :type, :media_type
  end

  def down
  end
end
