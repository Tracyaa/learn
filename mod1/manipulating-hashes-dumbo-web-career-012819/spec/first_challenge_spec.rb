require_relative 'spec_helper'
require_relative '../lib/first_challenge.rb'

describe "#first_challenge" do 
  it "iterates over the contacts hash and deletes strawberry from Freddy Mercury's favorite ice cream flavors" do 
    expect(first_challenge["Freddy Mercury"][:favorite_icecream_flavors]).to_not include("strawberry")
  end
end