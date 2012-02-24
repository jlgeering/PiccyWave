class Picture < ActiveRecord::Base
	attr_accessible :name, :image
	mount_uploader :image, ImageUploader
end
