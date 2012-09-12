class CreateContactAssociations < ActiveRecord::Migration
  def change
    create_table :contact_associations do |t|
      t.integer :associatable_id
      t.string :associatable_type
      t.integer :contact_id
      t.timestamps
    end
  end
end
