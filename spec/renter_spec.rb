require 'spec_helper'

RSpec.describe Renter do
  before(:each) do
    @renter = Renter.new("Patrick Star")
    # pry(main)> renter = Renter.new("Patrick Star", "4242424242424242")    
    # # => #<Renter:0x00007fb5ef98b118...>
  end

  it "can initialize" do
    expect(@renter).to be_an_instance_of(Renter)
  end

  it "has a name" do
    expect(@renter.name).to eq("Patrick Star")
    # pry(main)> renter.name
    # # => "Patrick Star"
  end

  it "has a credit card number" do
    expect(@renter.credit_card_number).to eq("4242424242424242")
    # pry(main)> renter.credit_card_number
    # # => "4242424242424242"
  end
end



