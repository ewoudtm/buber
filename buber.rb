# This class will be in charge of running your program.

class Buber
  attr_accessor :spacetaxis, :passengers

  def initialize ()
    @spacetaxis = []
    @passengers = []

  end

  def add_taxis(spacetaxi)
    @spacetaxis << spacetaxi
  end

  def add_passenger(passenger)
    @passengers << passenger
  end
    
