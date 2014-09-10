class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :collections
  has_many :photos
  has_many :tags

  validates :name, :presence => true

  mount_uploader :avatar, AvatarUploader
end
