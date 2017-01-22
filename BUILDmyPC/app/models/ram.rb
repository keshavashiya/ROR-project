class Ram < ActiveRecord::Base
	mount_uploader :picture, PictureUploader
end
