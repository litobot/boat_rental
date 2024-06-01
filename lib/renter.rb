class Renter
  attr_reader :name,
              :credit_card_number

  def initialize(name)
    @name = name
    @credit_card_number = "4242424242424242"
  end
end