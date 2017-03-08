# This class will be in charge of running your program.
require_relative "passenger.rb"
require_relative "spacetaxi.rb"


class Buber
  attr_accessor :spacetaxis, :passengers

  def initialize(spacetaxis = [],passengers = [])
    @spacetaxis = spacetaxis
    @passengers = passengers
  end

  def create_spacetaxis
    for i in (1..20) do
      @spacetaxis << SpaceTaxi.new(i)
    end
  end

  def run
    create_spacetaxis
    new_passenger
    list_available_taxis
    choose_taxi
    pay
  end

  def add_passenger(passenger)
    @passengers << passenger
  end

  def flip_availability_taxi(taxi)
    taxi.available = !taxi.available
  end

  def list_available_taxis
    available_taxis = @spacetaxis.select {|spacetaxi| spacetaxi.available} ### check code
    available_taxis.each {|taxi| puts "taxi id - #{taxi.id}"}
  end

  def choose_taxi
    puts "Please select the taxi you would like to use by typing in it's id."
    choice = gets.chomp.to_i
    chosen_taxi = @spacetaxis[choice - 1]
    flip_availability_taxi(chosen_taxi)
  end

  def new_passenger
    puts "What is your first name?"
    first_name = gets.chomp
    puts "What is your last name?"
    last_name = gets.chomp
    puts "What is your age?"
    age = gets.chomp.to_i
    puts "Where do you need to be picked up from?"
    location = gets.chomp
    puts "Where would you like to go?"
    destination = gets.chomp
    Passenger.new(first_name,last_name,age,location,destination)
  end

  def pay
    "We have arrived at your destination. The fair is #{10 + rand(20)} credits and has been deducted from your account."
    flip_availability_taxi
  end

end
