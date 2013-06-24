class CleanOutTimestamps < ActiveRecord::Migration
  def up
    remove_column :assets, :created_at
    remove_column :assets, :updated_at
    
    remove_column :attraction_tours, :created_at
    remove_column :attraction_tours, :updated_at
    
    remove_column :attractions, :created_at
    remove_column :attractions, :updated_at
    
    remove_column :media, :created_at
    remove_column :media, :updated_at
    
    remove_column :tours, :created_at
    remove_column :tours, :updated_at
    
    remove_column :venues, :created_at
    remove_column :venues, :updated_at
    
    remove_column :visitors, :created_at
    remove_column :visitors, :updated_at
    
    
  end

  def down
  end
end
