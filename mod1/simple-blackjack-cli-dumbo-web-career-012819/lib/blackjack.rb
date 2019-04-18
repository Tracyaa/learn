def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(sum)
  puts "Your cards add up to #{sum}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  firstCall = deal_card
  secondCall = deal_card
  sum = firstCall + secondCall
  display_card_total(sum)
  return sum
end

def hit?(sum)
  prompt_user
  answer = get_user_input
  if answer == "h"
    sum += deal_card
  elsif answer == "s"
    return sum
  else
    invalid_command
  end
  return sum
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = hit?(initial_round)
  display_card_total(total)
  until total > 21
    total += hit?(total)
  end
  end_game(total)
end
