class CreateAttractions < ActiveRecord::Migration
  def change
    create_table :attractions do |t|
      t.integer :tour_id
      t.float :latitude
      t.float :longitude
      t.float :radius
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
