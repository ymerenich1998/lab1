class Photo < ApplicationRecord
	mount_uploader :photo, FotoUploader

	belongs_to :user
	belongs_to :category
end
