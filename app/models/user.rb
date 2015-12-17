class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :posts
  mount_uploader :avatar, AvatarUploader
  validates :nickname, uniqueness: true, length: { maximum: 20 }
end
