class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :id
      t.float :latitude
      t.float :longitude
      t.string :radius
      t.string :double
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
