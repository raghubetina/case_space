class Tag < ActiveRecord::Base
  belongs_to :user

  has_many :taggings, :dependent => :destroy
  has_many :photos, :through => :taggings

  validates :name, :presence => true
  validates :sanitized_name, :uniqueness => true

  before_validation :sanitize_name

  def sanitize_name
    self.sanitized_name = self.name.try(:squish).try(:downcase)
  end
end
