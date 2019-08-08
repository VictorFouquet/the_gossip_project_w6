class Gossip < ApplicationRecord
	has_many :comments, dependent: :destroy
	belongs_to :user
	validates :title,
		presence: true,
		length: { minimum: 3, maximum: 14 }
	validates :content,
		presence: true
end
