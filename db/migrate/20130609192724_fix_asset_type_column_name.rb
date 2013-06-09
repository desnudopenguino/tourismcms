class FixAssetTypeColumnName < ActiveRecord::Migration
  def up
     rename_column :assets, :type, :assetType
  end

  def down
  end
end
