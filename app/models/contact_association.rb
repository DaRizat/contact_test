class ContactAssociation < ActiveRecord::Base
  belongs_to :associatable, :polymorphic => true
  belongs_to :contact

  def details
    contact
  end

end
