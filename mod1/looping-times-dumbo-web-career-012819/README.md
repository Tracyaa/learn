# The `times` Construct

## Objectives

1. Understand the `times` construct and how it implements looping
2. Build a method using `times`

## Introduction

The next construct in our list is `times`. There are two important distinctions to be mindful of when using `times`. The first one is that it has to be called on an Integer (like `1` or `10000`). The second is that it executes the block a certain number of times, which is dependent on the number that it's called on. Let's look at the example below:

```ruby
5.times do
  puts "Penguins like to jump off icebergs!"
end
```

This outputs `Penguins like to jump off icebergs!` five times in your Terminal.

## Examples

### Basic `times` Example: Dinner Party

Let's take a look at some more complex examples: 

You just had a wildly successful dinner party with seven of your very best friends. Then they went home and left you with *all* of the dishes. They will *not* be invited back. 

Let's clean those dishes using the `times` method:

```ruby
7.times do 
  puts "I am doing the dishes left by my former friends."
end

# > "I am doing the dishes left by my former friends."
# > "I am doing the dishes left by my former friends."
# > "I am doing the dishes left by my former friends."
# > "I am doing the dishes left by my former friends."
# > "I am doing the dishes left by my former friends."
# > "I am doing the dishes left by my former friends."
# > "I am doing the dishes left by my former friends."

# => 7 (return value)
```

### Intermediate `times` Example: Crime Spree

Okay, that's fine, but all we did was print some text––what if we wanted to change the value of a variable within a loop? Let's see how that works: 

You are a jewel thief who has stolen one hundred (100) very valuable jewels (you are a really good jewel thief). But now you need to unload your stolen jewels from your bag into the safe in your secret hideout!  

```ruby
jewels_in_bag = 100

3.times do 
  puts "Hiding 10 stolen jewels."
  jewels_in_bag = jewels_in_bag - 10
end

# => 3 (return value)

puts "We have #{jewels_in_bag} jewels still to hide!"


# > "Hiding 10 stolen jewels."
# > "Hiding 10 stolen jewels."
# > "Hiding 10 stolen jewels."

# > "We have 70 jewels still to hide!"

# => nil (return value)

```

#### Advanced `times` Example

This is fun and all, but so far we've only printed text within the block of code within the loop. What if we wanted to do something more, say, keep track of the number of jewels we are hiding *as we hide them*? 

```ruby
jewels_in_bag = 100

3.times do 
  puts "Hiding 10 stolen jewels."
  jewels_in_bag = jewels_in_bag - 10
  puts "Now there are only #{jewels_in_bag} jewels left to hide!"
end
# => 3 (return value)

puts "We have #{jewels_in_bag} jewels still to hide!"
# => nil (return value)

# > "Hiding 10 stolen jewels."
# > "Now there are only 90 jewels left to hide!"
# > "Hiding 10 stolen jewels."
# > "Now there are only 80 jewels left to hide!"
# > "Hiding 10 stolen jewels."
# > "Now there are only 70 jewels left to hide!"

# > "We have 70 jewels still to hide!"

```

## Using the `times` method

We're still struggling to master that levitation charm. Since we need to keep practicing, let's write some code that allows us to `puts` the phrase "Wingardium Leviosa" only seven times (instead of infinitely, like when we used just a plain `loop` construct).

## Instructions

1. Fork and clone this lab.
2. Run the test suite with the `learn` command. 
3. You'll be coding your solution in `times.rb`: 

  * Fill out the content of the `using_times` method so that calling it will `puts` the desired phrase, `"Wingardium Leviosa"` seven times by using the `times` keyword.  

<p data-visibility='hidden'>View <a href='https://learn.co/lessons/looping-times' title='The times Construct'>The times Construct</a> on Learn.co and start learning to code for free.</p>

<p data-visibility='hidden'>View <a href='https://learn.co/lessons/looping-times'>Times</a> on Learn.co and start learning to code for free.</p>
