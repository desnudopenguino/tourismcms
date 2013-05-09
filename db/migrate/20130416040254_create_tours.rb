class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.integer :id
      t.integer :location_id
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
