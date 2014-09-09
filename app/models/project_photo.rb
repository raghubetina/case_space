class ProjectPhoto < ActiveRecord::Base
  belongs_to :photo
  belongs_to :project

  validates :photo, :presence => true
  validates :project, :presence => true
end
