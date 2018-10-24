require_relative 'taxi'

class Taxi_Sevice
    attr_accessor :rider_queue, :taxi_queue

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
        #Looks at both queue lenths and loops until either is empty
        until @taxi_queue.length == 0 || @rider_queue.length == 0 do
            #Checks to see if there are any free seats for the current taxi at fron of queue
            until @taxi_queue[0].free_seats < 1 do

                p "taxi: #{@taxi_queue[0]} rider: #{@rider_queue[0]} free seats : #{@taxi_queue[0].free_seats}"
                #Calling a method to add the passenger from the rider queue to the current taxi
                taxi_queue[0].pickup_passenger(@rider_queue[0])
                #remove the rider from the queue
                @rider_queue.shift #remove the rider from the queue
                @taxi_queue[0].free_seats -= 1
            end
            @taxi_queue.shift
        end
    end
end


taxi1 = Taxi.new("Driver1", 4, "Toyota", "Prius", "CAB4LIF")
taxi2 = Taxi.new("Driver2", 2, "Mazda", "3", "CABISLIF")
taxi3 = Taxi.new("Driver3", 7, "Toyota", "Sienna", "CABBLIF")
taxi4 = Taxi.new("Driver4", 10, "Mercedes", "aVan", "CABSLIF")
taxi5 = Taxi.new("Driver5", 1, "Smart", "for2", "CABNOLIF")

service1 = Taxi_Sevice.new()

service1.add_rider("Berk1")
service1.add_rider("Berk2")
service1.add_rider("Berk3")
service1.add_rider("Berk4")
service1.add_rider("Berk5")
service1.add_rider("Berk6")
service1.add_rider("Berk7")
service1.add_rider("Berk8")
service1.add_rider("Berk9")
service1.add_rider("Berk10")
service1.add_rider("Berk11")

service1.add_taxi(taxi1)
service1.add_taxi(taxi2)
service1.add_taxi(taxi3)
service1.add_taxi(taxi4)
service1.add_taxi(taxi5)

p service1.taxi_queue

service1.assign_taxi()



p service1.rider_queue
p service1.taxi_queue

p taxi1
p taxi2
