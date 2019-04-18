require_relative 'api_communicator.rb'

def welcome
  # puts out a welcome message here!
  puts "Welcome to Star Wars Website!"
end

def get_character_from_user
  puts "please enter a character name"
  input = gets.chomp.downcase # it will return
  # use gets to capture the user's input. This method should return that input, downcased.
end
