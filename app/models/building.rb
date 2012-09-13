class Building < ActiveRecord::Base
  has_one :manager, :class_name => "ContactAssociation", :as => :associatable, :dependent => :destroy, :conditions => {:contact_type => 'Manager' }
  has_one :owner, :class_name => "ContactAssociation", :as => :associatable, :dependent => :destroy, :conditions => {:contact_type => 'Owner' }
  has_many :agents, :class_name => "ContactAssociation", :as => :associatable, :dependent => :destroy, :conditions => {:contact_type => 'Agent' }

  has_many :sites
  has_many :projects
end
