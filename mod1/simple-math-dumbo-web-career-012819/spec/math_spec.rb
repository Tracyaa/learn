require 'spec_helper'

describe "#addition" do 
  it "adds two numbers together" do
    expect(addition(5,4)).to eq(9)
  end
end

describe "#subtraction" do
  it "subtracts two numbers from each other" do
    expect(subtraction(10,5)).to eq(5)
  end
end

describe "#division" do
  it "divides one number by another" do
    expect(division(50,2)).to eq(25)
  end
end

describe "#multiplication" do
  it "multiplies two numbers together" do
    expect(multiplication(4,30)).to eq(120)
  end
end

describe "#modulo" do
  it "returns the remainder of two numbers" do
    expect(modulo(34, 5)).to eq(4)
  end
end

describe "#square_root" do
  it "returns the square root of a number" do
    expect(square_root(81)).to eq(9)
  end
end

describe "order_of_operations" do
  it "uses parenthesis to set the order of operations properly" do
    expect(order_of_operation(7, 43, 23, 83)).to eq(18)
  end
end


