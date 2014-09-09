class Photo < ActiveRecord::Base
  belongs_to :user

  has_many :project_photos, :dependent => :destroy
  has_many :projects, :through => :project_photos

  has_many :taggings, :dependent => :destroy
  has_many :tags, :through => :taggings

  validates :user, :presence => true
  validates :image, :presence => true

  mount_uploader :image, ImageUploader
end
