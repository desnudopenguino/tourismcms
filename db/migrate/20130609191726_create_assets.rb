class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.integer :venue_id
      t.string :type
      t.string :location

      t.timestamps
    end
  end
end
