class AddPaidToBookings < ActiveRecord::Migration[5.2]
  def change
  	add_column :bookings, :paid, :binary
  end
end
