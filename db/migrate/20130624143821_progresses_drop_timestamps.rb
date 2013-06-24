class ProgressesDropTimestamps < ActiveRecord::Migration
  def up
    remove_column :progresses, :created_at
    remove_column :progresses, :updated_at
  end

  def down
  end
end
