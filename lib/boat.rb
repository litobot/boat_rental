class Boat
  attr_reader :price_per_hour,
              :hours_rented,
              :type, 
              :rate

  def initialize(type, rate)
    @type = type
    @rate = rate
    @price_per_hour = 20
    @hours_rented = 0
  end

  def add_hour
    @hours_rented += 1
  end
end