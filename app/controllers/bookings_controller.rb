class BookingsController < ApplicationController
	before_action :set_booking, only: [:edit, :update, :show, :destroy]

	def home
	end

	def index
		@bookings = Booking.all
	end

	def edit
		
	end

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

	def update
		
		if @booking.update(booking_params)
			flash[:notice] = "Assignment was edited."
			redirect_to booking_path(@booking)
		else
			render 'edit'
		end
	end

	def show
		
	end

	def destroy
		
		@booking.destroy
		flash[:notice] = "Assignment is deleted."
		redirect_to bookings_path
	end

	private
	def set_booking
		@booking = Booking.find(params[:id])
	end

	def booking_params
		params.require(:booking).permit(:name, :room_num)
	end
end
