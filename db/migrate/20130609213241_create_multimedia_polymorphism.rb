class CreateMultimediaPolymorphism < ActiveRecord::Migration
  def up
    add_column :media, :multimedia_id, :integer
    add_column :media, :multimedia_type, :string
  end

  def down
  end
end
