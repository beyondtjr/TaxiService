class Taxi
    attr_accessor :driver, :free_seats, :rider_list#Set up setter and getters
    attr_writer #set up setters
    attr_reader :make, :model, :licence_plate#set up getters

    def initialize(driver, free_seats, make, model, licence_plate)
        @driver = driver
        @free_seats = free_seats
        @make = make
        @model = model
        @licence_plate = licence_plate
        @rider_list = []
    end

    def pickup_rider(name)
        @rider_list << name
    end


end
