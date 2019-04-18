require_relative './spec_helper'

describe 'Loops' do
  before(:each) do
    @looping_string = "Welcome to Flatiron School's Web Development Course!\nWelcome to Flatiron School's Web Development Course!\nWelcome to Flatiron School's Web Development Course!\nWelcome to Flatiron School's Web Development Course!\nWelcome to Flatiron School's Web Development Course!\nWelcome to Flatiron School's Web Development Course!\nWelcome to Flatiron School's Web Development Course!\n"
  end

  describe 'loop' do
    it "prints out Welcome to Flatiron School\'s Web Development Course! 7 times" do
      expect{ loop_iterator(7) }.to output(@looping_string).to_stdout
    end
  end

  describe 'times' do
    it "prints out Welcome to Flatiron School\'s Web Development Course! 7 times" do
      expect{ times_iterator(7) }.to output(@looping_string).to_stdout
    end
  end

  describe 'while' do
    it 'prints out Welcome to Flatiron School\'s Web Development Course! 7 times' do
      expect{ while_iterator(7) }.to output(@looping_string).to_stdout
    end
  end

  describe 'until' do
    it "prints out Welcome to Flatiron School\'s Web Development Course! 7 times" do
      expect{ until_iterator(7) }.to output(@looping_string).to_stdout
    end
  end

  describe 'for' do
    it "prints out Welcome to Flatiron School\'s Web Development Course! 7 times" do
      expect{ for_iterator(7) }.to output(@looping_string).to_stdout
    end
  end
end
