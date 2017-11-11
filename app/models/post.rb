class Post < ApplicationRecord
	belongs_to :user
	 has_many :postcomments
	 
	validates :title, length: { in: 1..20 }
	validates :body, length: { in: 10..512 }
	validates :title, uniqueness: true
	validates :title, presence: true
	
end
