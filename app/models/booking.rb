class Booking < ApplicationRecord
  validates :name, presence: true
  validates :room_num, presence: true
  validates :check_in, presence: true
  validates :check_out, presence: true
end