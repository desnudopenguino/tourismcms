class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :attraction_tour_id
      t.integer :order
      t.string :content

      t.timestamps
    end
  end
end
