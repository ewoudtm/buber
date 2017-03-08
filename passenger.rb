# his class will be in charge of telling Ruby what a passenger is, specifying its characteristics and behavior.

class Passenger
  attr_accessor :first_name, :last_name, :age, :location, :destination

  def initialize (first_name, last_name,age, location, destination)
    @first_name = first_name
    @last_name = last_name
    @age = age
    @location = location
    @destination = destination
  end
end
