class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :unit
      t.string :name
      t.integer :building_id
      t.timestamps
    end
  end
end
