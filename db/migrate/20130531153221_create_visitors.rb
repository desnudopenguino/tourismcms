class CreateVisitors < ActiveRecord::Migration
  def change
    create_table :visitors do |t|
      t.string :oid

      t.timestamps
    end
  end
end
