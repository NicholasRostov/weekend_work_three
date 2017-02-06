# In this exercise, we've already implemented the class, and you have to write the 
# driver code. 
# This class represents a hotel reservation.

class HotelReservation
  attr_accessor :customer_name, :date, :room_number, :amenities

  def initialize(reservation_info)
    @customer_name = reservation_info[:customer_name]
    @date = reservation_info[:date]
    @room_number = reservation_info[:room_number]
    @amenities = []
  end

  def add_a_fridge
    @amenities << "fridge"
  end

  def add_a_crib
    @amenities << "crib"
  end

  def add_a_custom_amenity(amenity)
    @amenities << amenity
  end
end


# Write your own driver code below! Make sure your code tests the following:
# The ability to change a room number even after a reservation has already been created
# The add_a_fridge method
# The add_a_crib method
# The add_a_custom_amenity method
puts "Testing Hotel Reservation"

reservation1 = HotelReservation.new(room_number:3, )

puts "Testing room update"
reservation1.room_number = 23
if reservation1.room_number == 23
  puts "Success!"
else
  puts "F"
end

puts "Amenities validation:"
x = reservation1.add_a_fridge
if x.include?("fridge")
  puts "Success!"
else
  puts "F"
end
x = reservation1.add_a_crib
if x.include?("crib")
  puts "Success!"
else
  puts "F"
end

x = HotelReservation.new(amenities:"foot rub")
 if x.include?("foot rub")
  puts "Success!"
else
  puts "F"
end





