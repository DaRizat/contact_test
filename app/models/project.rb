class Project < ActiveRecord::Base
  belongs_to :building
  has_one :primary_contact, :class_name => "ContactAssociation", :as => :associatable, :dependent => :destroy
end
