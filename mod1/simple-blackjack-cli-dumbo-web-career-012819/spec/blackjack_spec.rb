describe "#welcome" do
  it "prints a welcome message to screen" do
    expect($stdout).to receive(:puts).with("Welcome to the Blackjack Table")
    welcome
  end
end

describe "#deal_card" do
  it "generates a random number between 1-11" do
    20.times do 
      card = deal_card
      expect(card).to be > 0
      expect(card).to be < 12
    end
  end
end

describe "#display_card_total" do
  it "accepts one argument, the card total" do
    expect { display_card_total(7) }.to_not raise_error
  end

  it "prints the value of the cards to the screen" do
    expect($stdout).to receive(:puts).with("Your cards add up to 8")
    display_card_total(8)
  end

  it "does not hardcode the card total" do
    expect($stdout).to receive(:puts).with("Your cards add up to 12")
    display_card_total(12)
  end
end


describe "#prompt_user" do
  it "gives instructions for hitting or staying" do
    expect($stdout).to receive(:puts).with("Type 'h' to hit or 's' to stay")
    prompt_user
  end
end

describe "#get_user_input" do
  it "returns the value of a `gets.chomp` method" do
    ["h", "s", "exit"].each do |string|
      expect(self).to receive(:gets).and_return(string)
      expect(get_user_input).to eq(string)
    end
  end
end

describe "#end_game" do
  it "prints apology, card total, and thank you message" do
    expect($stdout).to receive(:puts).with("Sorry, you hit 27. Thanks for playing!")
    end_game(27)
  end
end

describe "#initial_round" do

  it "calls on #deal_card twice and returns the sum" do
    expect(self).to receive(:deal_card).at_least(:twice).and_return(6)
    expect(initial_round).to eq(12)
  end

  it "calls on the '#display_card_total' to print sum of cards" do
    expect(self).to receive(:deal_card).at_least(:twice).and_return(6)
    expect($stdout).to receive(:puts).with(/Your cards add up to /)
    initial_round
  end

end

describe "#hit?" do
  before(:each) do
    def get_user_input
      "s"
    end
  end

  it "calls on #prompt_user then #get_user_input" do
    expect($stdout).to receive(:puts).with("Type 'h' to hit or 's' to stay")
    expect(self).to receive(:get_user_input).and_return("s")
    hit?(7)
  end

  it "returns an integer which is the card total" do
    expect(self).to receive(:get_user_input).and_return("s")
    expect(hit?(20)).to eq(20)
  end

  it "does not deal another card if user types 's'" do
    expect(self).to receive(:get_user_input).and_return("s")
    expect(hit?(7)).to eq(7)
  end

  it "deals another card when user types 'h'" do
    expect(self).to receive(:get_user_input).and_return("h")
    expect(self).to receive(:deal_card).and_return(7)
    expect(hit?(7)).to eq(14)
  end

end

describe "#runner" do

  before(:each) do
    def get_user_input
      "h"
    end 
  end

  it "calls on the #welcome method, 
  then on the #initial_round method, 
  then calls #hit? and #display_card_total methods
  -until- the card sum is greater than 21,
  then calls on the #end_game method" do

    expect(self).to receive(:deal_card).at_least(3).times.and_return(10)
    expect(self).to receive(:get_user_input).and_return("h")

    expect($stdout).to receive(:puts).with("Welcome to the Blackjack Table")
    expect($stdout).to receive(:puts).with("Your cards add up to 20")
    expect($stdout).to receive(:puts).with("Type 'h' to hit or 's' to stay")
    expect($stdout).to receive(:puts).with("Your cards add up to 30")
    expect($stdout).to receive(:puts).with("Sorry, you hit 30. Thanks for playing!")
    runner
  end
end
