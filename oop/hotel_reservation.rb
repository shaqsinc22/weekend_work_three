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

  def room_number=(room_number)
    @room_number = room_number  
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


reservation = HotelReservation.new(     #created reservation
                                  customer_name: "Billy Bob",
                                  date: "01/21/2017",
                                  room_number: "22",
                                  ) 


p reservation
reservation.room_number=("32")      #changing room number even after reservation
reservation.add_a_fridge            #testing add_a_fridge_method
reservation.add_a_crib              #testing add_a_crib method
reservation.add_a_custom_amenity("tv")  #testing add_a_customer_amenity
reservation.add_a_custom_amenity("ice-maker") #testing add_a_customer_amenity

p reservation

# Write your own driver code below! Make sure your code tests the following:
# The ability to change a room number even after a reservation has already been created
# The add_a_fridge method
# The add_a_crib method
# The add_a_custom_amenity method

