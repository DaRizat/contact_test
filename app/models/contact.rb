class Contact < ActiveRecord::Base
  belongs_to :company
  has_many :buildings, :class_name => "ContactAssociation", :foreign_key => 'contact_id', :conditions => {:associatable_type => "Building"}
end
