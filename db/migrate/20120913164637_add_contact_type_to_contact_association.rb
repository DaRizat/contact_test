class AddContactTypeToContactAssociation < ActiveRecord::Migration
  def change
    add_column :contact_associations, :contact_type, :string
  end
end
