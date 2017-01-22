class Profile < ActiveRecord::Base
	mount_uploader :picture, PictureUploader
end
