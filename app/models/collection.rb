class Collection < ActiveRecord::Base
  belongs_to :user

  has_many :collection_photos, :dependent => :destroy
  has_many :photos, :through => :collection_photos

  validates :user, :presence => true
  validates :title, :presence => true
end
