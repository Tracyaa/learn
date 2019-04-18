# Keys Of Hash

## Objectives

1. Practice manipulating hashes
2. Practice using the splat operator
3. Understand what monkey patching is

## Instructions

Fork and clone this lab. Run `learn` to see what the tests require of you. In this lab you'll be modifying Ruby's Hash class. This is called **monkey patching**. 

### What is Monkey Patching

Monkey patching is the practice of re-opening and modifying pre-existing classes. So, Ruby already has a Hash class, the instances of which you've been working with in the past two units. If we create a file that reads: 

```ruby
class Hash

  #some stuff
  
end
```

Ruby will understand that the Hash class already exists and that you are modifying/adding to it. 

### Danger!

Monkey patching is generally avoided. You don't want to mess with the implementation of the objects and methods native to Ruby. It could get messy, fast. What if you monkey patch the Hash class and accidentally overwrite or interfere with some functionality that you need to utilize? What if you monkey patch the hash class and then your bff/co-worker/boss/someone you have never even met before in our wonderful open-source community tried to build on your code and gets confused and thwarted by your monkey patches? 

### Back to the instructions...
You'll be coding your solution in `lib/keys_of_hash.rb`. You'll fill out the content of the `keys_of_hash` method which is an instance method that we are adding to the Hash class. This means that any instance of the Hash class, i.e. any hash, can now have `.keys_of_hash` called on it. 

This method should take an undefined number of arguments, using the splat operator, and return an array with every key from the hash whose value matches the value(s) given as an argument. 

## Resources
* [The Strange Ruby Splat](https://endofline.wordpress.com/2011/01/21/the-strange-ruby-splat/)

<p data-visibility='hidden'>View <a href='https://learn.co/lessons/keys-of-hash' title='Keys Of Hash'>Keys Of Hash</a> on Learn.co and start learning to code for free.</p>
