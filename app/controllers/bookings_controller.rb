class BookingsController < ApplicationController
	def new
		@booking = Booking.new
	end

	def create
		#render plain: params[:booking].inspect
		@booking = Booking.new(booking_params)
		@booking.save
		redirect_to bookings_show(@booking)
	end

	private
	def booking_params
		params.require(:booking).permit(:name, :room_num)
	end
end
