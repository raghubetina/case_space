class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :projects
  has_many :photos
  has_many :tags, :through => :photos

  validates :name, :presence => true

  mount_uploader :avatar, AvatarUploader
end
