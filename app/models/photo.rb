class Photo < ApplicationRecord
	mount_uploader :photo, FotoUploader

	has_many :votes
	
	belongs_to :user
	belongs_to :category
end
