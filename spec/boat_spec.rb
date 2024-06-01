require 'spec_helper'

RSpec.describe Boat do
  before(:each) do
    @kayak = Boat.new(:kayak, 20)
    # pry(main)> kayak = Boat.new(:kayak, 20)    
    # # => #<Boat:0x00007fceac8f0480...>
  end

  it "can initialize" do
    expect(@kayak).to be_an_instance_of(Boat)
  end

  it "has a type" do
    expect(@kayak.type).to eq(:kayak)
    # pry(main)> kayak.type
    # # => :kayak
  end

  it "has a price per hour" do
    expect(@kayak.price_per_hour).to eq(20)
    # pry(main)> kayak.price_per_hour
    # # => 20
  end

  it "can be rented by the hour" do
    expect(@kayak.hours_rented).to eq(0)
    # pry(main)> kayak.hours_rented
    # # => 0
    
    @kayak.add_hour
    # pry(main)> kayak.add_hour
    
    @kayak.add_hour
    # pry(main)> kayak.add_hour
    
    @kayak.add_hour
    # pry(main)> kayak.add_hour
    
    expect(@kayak.hours_rented).to eq(3)
    # pry(main)> kayak.hours_rented
    # # => 3
  end
end