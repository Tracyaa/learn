require_relative 'spec_helper'
require_relative '../lib/second_challenge.rb'

describe "#second_challenge" do 
  it "uses the .values method to collect all of the grocery items from the groceries hash" do 
    expect(second_challenge).to eq(["milk", "yogurt", "cheese", "carrots", "broccoli", "cucumbers", "chicken", "steak", "salmon", "rice", "pasta"])
  end
end