require_relative "spec_helper"
require_relative "../for.rb"

describe "#using_for" do 
	it "puts until the phrase 'Wingardium Leviosa' 10 times, once for each item on the checklist" do
		looping_string = "Wingardium Leviosa\nWingardium Leviosa\nWingardium Leviosa\nWingardium Leviosa\nWingardium Leviosa\nWingardium Leviosa\nWingardium Leviosa\nWingardium Leviosa\nWingardium Leviosa\nWingardium Leviosa\n"
		expect{ using_for }.to output(looping_string).to_stdout
	end
end