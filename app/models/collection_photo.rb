class CollectionPhoto < ActiveRecord::Base
  belongs_to :photo
  belongs_to :collection

  validates :photo, :presence => true
  validates :collection, :presence => true
end
