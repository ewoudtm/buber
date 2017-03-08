require_relative "buber.rb"
require_relative "passenger.rb"
require_relative "spacetaxi.rb"

buber = Buber.new

for i in (1..20)
  buber.add_taxis(i)
end




def register_passenger
  puts "What is your first name?"
  first_name = gets.chomp
  puts "What is your last name?"
  last_name = gets.chomp
  puts "What is your age?"
  age = gets.chomp.to_i
  
end
