class CreateAttractionTours < ActiveRecord::Migration
  def change
    create_table :attraction_tours do |t|
      t.integer :attraction_id
      t.integer :tour_id
      t.float :radius
      t.string :description
      t.integer :order

      t.timestamps
    end
  end
end
