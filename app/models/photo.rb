class Photo < ActiveRecord::Base
  belongs_to :user

  has_many :collection_photos, :dependent => :destroy
  has_many :collections, :through => :collection_photos

  validates :user, :presence => true
  validates :image, :presence => true

  mount_uploader :image, ImageUploader

  acts_as_taggable

  def tag_names
    self.tags.pluck(:name)
  end
end
