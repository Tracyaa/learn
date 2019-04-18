# Simplified Blackjack - Procedural

## Objective

1. Utilize conditional logic and looping
2. Gain an introduction to the command line interface

## Background

In [Blackjack](http://en.wikipedia.org/wiki/Blackjack) the goal is to have a hand that is closer to 21 than the dealer's hand without ever exceeding a card total of 21. 

However, in this simplified version of Blackjack, we'll cut out that "compare with the dealer's hand" part and pretend that the goal of the game is to have a card total of, or very close to, but never exceeding, 21.

To start, a player gets dealt two cards, each of which have values between 1-11. Then, the player is asked if they want to "hit" (get another card dealt to them), or "stay".

If they hit, they get dealt another card. If the sum of their three cards exceeds 21, they've lost. If it does not, they can decide to hit or stay again FOREVER.

If you're thinking, "But now there's no way to win!", then you'd be right. In this simple, simple version of Blackjack, there is no way to win. Once you've completed this lab, feel free to make a second version where there IS a way to win. Maybe even include the real rules and compare the user's hand to the dealer's hand.

## The Command Line Interface

**A Brief Note:** This is a brief introduction to command line apps. It's okay if you don't understand everything we discuss here. We're going to take a more in depth look in your next command line application.


The CLI, or command line interface, is the interaction between a user and their computer or a program via the command line. You've already become comfortable interacting with the command line to navigate files and connect with Github and test your programs. In a command line application, the user will respond to a prompt that your program will output to the terminal. The user's response, or input, will be received by the application and the application will then carry out the programmed response based on that input.

In fact, you've already played around with a command line app in one of the previous lessons––Looping: Break and Gets. When you executed the `annoying_program` file, the `puts` method output some text to the terminal and the `gets` method collected and saved the user's input to the terminal. We'll be using the same techniques to build our simple blackjack game. 

### How does `puts` output text to the terminal?

Here's a brief recap from an earlier lesson––Puts, Print and Return (from the Methods and Variables unit). 

>
How do the puts and print methods actually output text to your console? They use the $stdout global variable provided to us by Ruby. You don't need to worry about global variables right now. For the purposes of understanding how puts and print work, we just need to understand the following:

>Your computer has an stdout file that communicates with your operating system. So, puts and print actually send output to the $stdout variable. The $stdout variable sends that information to the stdout file on your computer which in turn communicates with your operating system which in turn outputs that information to the console.

You can absolutely employ puts and print without understanding everything that was just described. But now you have a basic sense of what is happening under the hood of these methods.

### Running our Command Line App

We already know that we can run, or execute the code in, a Ruby file from the command line by typing `ruby <file name>`. In a command line app, it is conventional to create a special file that has one responsibility: executing the code that constitutes our program. You can think about this in terms of the separation of concerns principle. The separation of concerns principle is a programming design principle for separating the responsibilities and functionalities into discrete sections. For our command line app, that means that we have one file that defines the methods we will use to play our blackjack game and a *separate* file that calls those methods. Then, we will play our game by executing the that "runner" file via `ruby runner.rb` in the command line. 

### Testing our Command Line App

You already know that your Blackjack command line app will rely on the user's input to run. In order to test our program using RSpec, we need a way for our test suite to fake the user's input, i.e. fake the implementation of the `puts` and `gets` methods. This is called **stubbing**. 

#### What is Stubbing?

Stubbing refers to the fake implementation of a method. In this case, we will stub the `puts` method to trick our test suite into thinking the stdout file has received the `puts` method *and* to trick our test suite into recognizing that the `gets` method has been used. 

In the next command line app that you will build, we will discuss stubbing in much greater detail. For now, just understand the following about how to read our test suite: 

**First:** 

```ruby
expect($stdout).to receive(:puts).with("Type 'h' to hit or 's' to stay")
```
The above line means that the test suite is expecting the execution of a certain method to use the `puts` method to output "Type 'h' to hit or 's' to stay". 

**Second:**

```ruby
expect(self).to receive(:get_user_input).and_return("s")
```

The above line means that the test suite is expecting the execution of a certain method to use the `gets` method to store the user's input and return that input (which in this particular test happens to be "s"). 

## Enacting a Ruby Program via a "Runner" Method

It is common practice to break down the constituent parts of a larger program into smaller methods. Each method should be responsible for *one job*. These methods can be called in succession inside a larger method to enact the running of the program. 

For example, if we were writing a simple app to greet a user and ask them their name, we might have a short method to output a welcome message, another method to ask them their name, a third method to capture the user's input, a fourth method to output a new, personalized greeting that uses that input and a last method that calls on each of the smaller methods to make the whole thing run. Our shorter methods might look like this:

```ruby
def welcome
	puts "HI!"
end

def ask_name
	puts "What is your name?"
end

def store_name
	gets.chomp
end

def personalized_welcome(name)
	puts "HI, #{name}"
end
```

To run our program, we need to call all of these methods. Instead of calling each of them in turn, we might place them *inside* a single method. Then, to enact our program, we only have to invoke our one wrapper, or **runner** method. 

```ruby
def run_program
	welcome
	ask_name
	name = store_name
	personalized_welcome(name)
end
```

The `#run_program` method can then be invoked inside of a runner file, discussed above. Such a file would only need to contain one line!

```ruby
# runner file

run_program
```

This is the basic pattern that we will be using to code our simple blackjack game. In the first part of this lab, we'll be defining our smaller methods, each of which is responsible for one discrete unit of the game. These methods are called **helper methods**. Once we have all of our helper method tests passing, we'll define the runner method that calls on each of the helper methods in turn to make the program run. 

## Instructions

All your code will go in `lib/blackjack.rb`. 

Once every test is working, run  `ruby lib/runner.rb` from the root directory to play!


### Using TDD

This lab is test driven, so run `learn` or `rspec` to guide you through the program.

**Read the test output very carefully!** Pay attention to whether or not the test is telling you that the method should be defined to take in an argument. Pay attention to what the test expects the return value of the method to be. 

We're going to take a look at one example together, and for the rest of the methods, you'll be required to let the tests guide you. 

In the test suite, we have the following test: 

```ruby
describe "#display_card_total" do
  it "accepts one argument, the card total" do
    expect { display_card_total(7) }.to_not raise_error
  end
  
  it "prints the value of the cards to the screen" do
    expect($stdout).to receive(:puts).with("Your cards add up to 8")
    display_card_total(8)
  end
  ....
```

This test is telling us the following things about the method called `display_card_total`:

*  The method should take in an argument of a number that is the card total. 
*  The method should use `puts` to output that card total as part of the phrase `"Your cards add up to #{card total}"`.


### Defining Our Methods

#### The `#welcome` Method

This method uses `puts` to output the message: "Welcome to the Blackjack Table". 

#### The `#deal_card` Method

This method generates and returns a random number between 1 and 11. 


#### The `#prompt_user` Method

This method asks the user for input by outputting the phrase "Type 'h' to hit or 's' to stay". 

#### The `#display_card_total` Method

This method accepts an argument of a number and puts out the phrase "Your cards add up to #{card_total}". The number that this method takes in as an argument is the sum of a players cards. This method will be *called inside another method*, at which point the real sum of a player's cards will be passed in as an argument. This is not important right now. Just define the method to take in a number and puts out the appropriate phrase using that number. 

#### The `#get_user_input` Method

This method is very basic. It only needs to use the `gets` method to capture the user's input. Eventually, when we take all of these helper methods and assemble them into the larger method that enacts the game play, this method will be used *after* we prompt the user for input to actually capture and store their input. 

#### The `#end_game` Method

This method takes in an argument of a number, which will be a player's card total, and outputs the message "Sorry, you hit #{card_total}. Thanks for playing!"

#### The `#initial_round` Method

This method represents the first round of the game for a given player. It should call on the `#deal_card` method twice, use the `#display_card_total` method to `puts` out the sum *and then* return the sum. This method will therefore call on two other helper methods, `#deal_card` and `#display_card_total`, which takes in an argument of the sum of both invocations of `#deal_card`. 

#### The `#hit?` Method

This method is a bit more complex. It should take in an argument of the player's current card total. So, set up your `#hit?` method to take in an argument of a number. 

Then, the method should use the `#prompt_user` method to prompt the user for input and the `#get_user_input` method to get and store the user's input. Now we need to implement some logic. If the player's input is `'s'`, we don't deal a new card. If the player's input is `'h'`, we do need to deal a new card. In this case, use the `#deal_card` method to deal a new card and increment the player's card total by whatever number is returned by `#deal_card`. 

If the player's input is *neither* `'h'` *nor* `'s'`, call on the `#invalid_command` method to output the phrase "Please enter a valid command". Then, call on the `#prompt_user` method again to remind your user what a valid command is.  

In either case, our method should then return the player's current card total. 

### The Runner Method: `#runner`

Once you get all of the tests in the first part of the test suite passing, you have built the building blocks of our blackjack game. Now, we need to put them all together in the `#runner` method. The `#runner` method is responsible for enacting the game play *until* the user loses. Remember that a player loses if the sum of their cards exceeds 21. 

Here's how we want our game to run: 

1. Welcome the user
2. Deal them their first two cards, i.e. their `initial_round`
3. Ask them if they want to hit or stay
4. If they want to hit, deal another card
5. If they want to stay, ask them again!
6. If their card total exceeds 21, the game ends. 

Use a loop constructor (I'd recommend `until`, but that is by no means your only option) to enact the above game play in the `#runner` method. Then, check out the `lib/runner.rb` file. Notice that it is simply calling the `#runner` method. The runner file will call the `#runner` method which should in turn utilize all the other methods you built!


## Resources
* [Wikipedia](http://en.wikipedia.org/) - [Blackjack](http://en.wikipedia.org/wiki/Blackjack)


<p data-visibility='hidden'>View <a href='https://learn.co/lessons/simple-blackjack-cli' title='Simple Blackjack CLI'>Simple Blackjack CLI</a> on Learn.co and start learning to code for free.</p>

<p class='util--hide'>View <a href='https://learn.co/lessons/simple-blackjack-cli'>Blackjack CLI</a> on Learn.co and start learning to code for free.</p>
