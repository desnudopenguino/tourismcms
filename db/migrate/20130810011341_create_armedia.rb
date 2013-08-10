class CreateArmedia < ActiveRecord::Migration
  def change
    create_table :armedia do |t|
      t.integer :medium_id
      t.float :arcone_start
      t.float :arcone_end
      t.string :sound_track
      t.string :rgb
      t.string :alpha

      t.timestamps
    end
  end
end
