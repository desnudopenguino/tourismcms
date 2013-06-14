class CreateProgresses < ActiveRecord::Migration
  def change
    create_table :progresses do |t|
      t.string :level

      t.timestamps
    end
  end
end
