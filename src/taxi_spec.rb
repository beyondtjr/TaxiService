require 'rspec'
require_relative 'taxi'

describe "Taxi" do
    #before(:each)
    #   @taxi = taxi.new()
    #end
    let(:taxi) {Taxi.new("Evan", 4, "Toyota", "Prius", "1234XYZ")}

    it "Is a real Taxi Object" do
        expect{taxi}.to_not raise_error
    end

    it "has a driver" do
        expect(taxi.driver).to be_a(String)
    end

    it "has a number of seats" do
        expect(taxi.free_seats).to be_a(Numeric)
    end

    it "has a make" do
        expect(taxi.make).to be_a(String)
    end

    it "has a model" do
        expect(taxi.make).to be_a(String)
    end

    it "has a licence plate" do
        expect(taxi.licence_plate).to be_a(String)
    end

    it "has a rider list" do
        expect(taxi.rider_list).to be_a(Array)
    end

    it "can pick up a rider" do
        expect{taxi.pickup_rider("temp_name")}.to change{taxi.rider_list.count}.by(1)
    end

end
