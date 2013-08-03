class CreateArcones < ActiveRecord::Migration
  def change
    create_table :arcones do |t|
      t.integer :attraction_tour_id
      t.float :start
      t.float :end

      t.timestamps
    end
  end
end
