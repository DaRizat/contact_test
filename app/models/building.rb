class Building < ActiveRecord::Base
  has_one :manager, :class_name => "ContactAssociation", :as => :associatable, :dependent => :destroy
  has_one :owner, :class_name => "ContactAssociation", :as => :associatable, :dependent => :destroy
  has_many :agents, :class_name => "ContactAssociation", :as => :associatable, :dependent => :destroy

  has_many :sites
  has_many :projects
end
