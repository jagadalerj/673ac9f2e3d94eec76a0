class User < ApplicationRecord
	# self.per_page = 3

	def self.serach_typead(input)
		where('first_name LIKE ? or last_name LIKE ? or email LIKE ?',"%#{input}%","%#{input}%","%#{input}%")
	end
end
