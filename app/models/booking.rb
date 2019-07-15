class Booking < ApplicationRecord
	validates :name, presence: true
	validates :room_num, presence: true
	validates :check_in, presence: true
	validates :check_out, presence: true
	validates :check_in, :check_out, overlap: { exclude_edges: :check_out, scope: 'room_num', message_content: '| The bed is occupied.'}

end