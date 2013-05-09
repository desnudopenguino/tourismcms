class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.integer :attraction_id
      t.string :type
      t.string :content

      t.timestamps
    end
  end
end
