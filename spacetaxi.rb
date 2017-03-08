# This class will be in charge of telling Ruby what a "space taxi" is, specifying its characteristics and behavior.


class SpaceTaxi
  attr_accessor :id, :available

  def initialize(id, available = true)
    @id = id
    @available = available
  end
end
