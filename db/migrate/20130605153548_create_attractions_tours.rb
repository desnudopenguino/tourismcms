class CreateAttractionsTours < ActiveRecord::Migration
  def change
    create_table :attractions_tours do |t|
      t.integer :attraction_id
      t.integer :tour_id
      t.integer :mediatype
      t.string :media

      t.timestamps
    end
  end
end