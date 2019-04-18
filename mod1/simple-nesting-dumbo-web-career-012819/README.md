# Simple Nesting Lab

## Objectives

1. Access data from a nested hash.
2. Add data to and change data within a nested hash.

## Instructions

1. Fork and clone this lab, run the test suite with the `learn` command to get started. 
2. You'll be filling out the content of a series of methods that we've defined for you. All of the methods expect you to operate on the `programmer_hash` object, which we've already defined and included in the body of each method. Use the test suite to guide you—each test is designed to tell you how to pass it. 

Keep in mind that you are expected to get these tests to pass by adding or changing information in the hash *programmatically*. In other words, if you're asked to, for example, change the value of a certain hash key, *don't just re-write the hash with the new value!* Use the methods we've learned and practiced in previous lessons.

Changing a hash like this is good, and what you should be practicing in this lab: 

```ruby
# good example

my_hash = {first: "i'm first!", second: "i'm second!"}
my_hash[:third] = "i'm third!"

puts my_hash
# > {first: "i'm first!", second: "i'm second!", third: "i'm third!"}
```

Changing a hash by simply re-defining it is not the goal of this lab: 

```ruby
# bad example

my_hash = {first: "i'm first!", second: "i'm second!"}
my_hash = {first: "i'm first!", second: "i'm second!", third: "i'm third!"}
```


**Top-tip:** *When defining methods, return values matter! Use Pry to drop into your methods and understand what is going on, what the return is, and why tests might not be passing.* 

<p data-visibility='hidden'>View <a href='https://learn.co/lessons/simple-nesting' title='Simple Nesting Lab'>Simple Nesting Lab</a> on Learn.co and start learning to code for free.</p>
