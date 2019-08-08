class User < ApplicationRecord
	has_secure_password
	validates :password,
		presence: true,
		length: { minimum: 6, maximum: 30 }
	has_many :gossips
	has_many :comments
	belongs_to :city
end
