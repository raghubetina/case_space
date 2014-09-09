class Project < ActiveRecord::Base
  belongs_to :user

  has_many :project_photos, :dependent => :destroy
  has_many :photos, :through => :project_photos

  validates :user, :presence => true
  validates :title, :presence => true
end
