# Looping With `for`

## Objectives

1. Understand the `for` construct and how it is used to implement looping.
2. Build a method that uses the `for` construct.

## Introduction 

The final construct is the `for` loop. This is one of the more confusing loops in the Ruby language, so it's best to explain this one via an example:

```ruby
for counter in 1..40 do
  puts "The current number is #{counter}."
end
```
### A Refresher on Ranges

Before going into the `for` example, it's important to explain what `1..40` does. `1..40` is a [`Range`](http://www.ruby-doc.org/core-2.2.0/Range.html) object. A range represents an interval that starts with a beginning element, and ends with an end element. The range we created above starts with a `1`, and ends with a `40`. Open up IRB in your Terminal, and type in `(1..40).to_a`. You're converting a range object to an array object, and it will return an array with all of the numbers that constitute the `1..40` range.

## How Does `for` Work?

When the `for` construct is executed, it sets `counter` equal to the first element of the range, which in our case is `1`. The first output of the `for` statement is `The current number is 1.`. It will keep going through the range until it reaches the last element, which is `40`. What will be the output of the last element? `The current number is 40.`.

Here's an abstracted version of the syntax: 

```ruby
for individual_element in range 
	execute some code
end
```

What you name your `individual_element` when constructing your `for` loop doesn't really matter. It should be in line, however, with whatever variable name you choose to point to your range. Check out the example below for a better understanding:

### Why Use `for`?

Imagine we have a collection or a list of objects. Let's say you are a prominent collector of sneakers and you are going through your sneaker collection and performing a certain action, putting them away in their box, for each pair. If you have 32 pairs of sneakers, you need to perform that action 32 times, once for each pair. We could do this with one of the constructors we've learned so far. Let's try it with a `while` loop: 

```ruby 
shoe_count = 0 

while shoe_count < 32
	puts "I'm putting a pair of shoes away."
	shoe_count += 1
end
``` 

Let's look at the same example using `for`. 

```ruby
shoe_count = 1..32

for shoe in shoe_count 
	puts "I'm putting a pair of shoes away."
end
```

There are few things about using `for` in this scenario that improve upon our original implementation. 

* We no longer need the counter variable `shoe_count` to keep track of the shoes. 
* This example is more explicit—when you read it, it speaks even more plainly about the behavior of our program. 
* All of the mechanics of looping—the counter, the incrementation—are abstracted away into one line: `for shoe in shoe_count` and the loop's implementation—what we want the loop to do or execute—is all that occurs inside the block.

### `for` As An Iterator

In the next unit, we'll be learning much more about collections of data, such as arrays, and iteration—the action of moving over every member of a collection and performing certain actions on each member. The `for` constructor is one type of iterator and we'll be revisiting it soon. 

## Using For

Fork and clone this lab, then read the instructions below and run the test suite to get started. 

* Okay, we're kind of at the bottom of the spell casting class and we need to spend a little bit more time practicing our levitation charm. We've made a checklist and promised to practice the charm ten (10) times. For each `item` in the checklist, our method will `puts` "Wingardium Leviosa".

* Fill out the content of the `using_for` method in the `for.rb` file so that it `puts` "Wingardium Leviosa" ten (10) times, once for each item on our checklist.
