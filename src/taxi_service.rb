class Taxi_Sevice
    def initialize
        @rider_queue =[]
        @taxi_queue = []
    end

    def add_rider(rider_name)
        @rider_queue << rider_name
    end

    def add_taxi(taxi)
        @taxi_queue << taxi
    end

    def assign_taxi
        
    end
