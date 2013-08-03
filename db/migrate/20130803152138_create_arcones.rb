class CreateArcones < ActiveRecord::Migration
  def change
    create_table :arcones do |t|
      t.integer :attraction_tour_id
      t.number :start
      t.number :end

      t.timestamps
    end
  end
end
