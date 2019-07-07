class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
    	t.string :name
    	t.string :room_num
    	t.binary :gender
    	t.string :nationality
    	t.date :birthday
    	t.string :room_type
    	t.date :booked_on
    	t.date :check_in
    	t.date :check_out
    	t.string :booking_site
    	t.text :memo
    	t.datetime :created_at
    	t.datetime :updated_at
    	t.integer :price
    end
  end
end
