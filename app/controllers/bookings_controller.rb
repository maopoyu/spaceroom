class BookingsController < ApplicationController
	def new
		@booking = Booking.new
	end

	def create
		@booking = Booking.new(booking_params)
		if @booking.save
			flash[:notice] = "Assignment was completed."
			redirect_to booking_path(@booking)
		else
			render 'new'
		end
	end

	def show
		@booking = Booking.find(params[:id])
	end

	private
	def booking_params
		params.require(:booking).permit(:name, :room_num)
	end
end
