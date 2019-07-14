class Booking < ApplicationRecord
	validates :name, presence: true
	validates :room_num, presence: true, length: { minimum: 4, maximum: 4 }
	validates :check_in, presence: true
	validates :check_out, presence: true
end