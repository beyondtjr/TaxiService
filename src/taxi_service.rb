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
        i = 0
        until @taxi_queue[i] == 0 do
            until @rider_queue == 0 || @taxi_queue[i].free_seats == 0 do
                @taxi_queue[i] << @rider_queue[0]
                @rider_queue.shift #remove the rider from the queue
                @taxi_queue[i].free_seats - 1
            end
            i++
        end
    end
