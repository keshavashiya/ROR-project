class GraphicsCard < ActiveRecord::Base
	mount_uploader :picture, PictureUploader
end
