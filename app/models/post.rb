class Post < ActiveRecord::Base
	belongs_to :user
	mount_uploader :imagen, ImagenUploader
	validates :contenido, length: { maximum: 140 }
end
