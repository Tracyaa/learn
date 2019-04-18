# My `#collect`

## Objectives

1. Build a method that yields members of a collection to a block. 
2. Control the return value of a method that uses `yield` such that it returns a new collection. 

## Instructions

You'll be writing your code in `lib/my_collect.rb`. 

You are writing a method that behaves just like the real `#collect` method. It should take in an argument of a collection, iterate over that collection using a `while` loop, and execute the code in the block you call it with for each element in the collection (use the `yield` keyword). It should return the modified collection. 

Your `#my_collect` method, therefore, should not care about the contents of the code block that it is invoked with. For example, let's say we are writing an app to help teachers manage their students. Our teacher has a list of students:

```ruby
["Tim Jones", "Tom Smith", "Jim Campagno"]
```

The list includes the first and last name of each student, but our teacher needs to collect a list of *just their first names*. 

So, if our teacher uses `#my_collect` to collect the first name of his students, it should work like this: 

```ruby
array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
my_collect(array) do |name|
  name.split(" ").first
end
```

Should return: 

```ruby
["Tim", "Tom", "Jim"]
```

What if your method was being invoked with a totally different collection and a totally different code block? For example, let's say your `#my_collect` method is given an argument of a list of programming languages and passed a block that capitalizes the elements `yield`ed to it. 

```ruby
collection = ['ruby', 'javascript', 'python', 'objective-c']
my_collect(collection) do |lang|
  lang.upcase
end

# => ["RUBY", "JAVASCRIPT", "PYTHON", "OBJECTIVE-C"]
```

Your method should behave the same way––iterating over the given collection and passing each member to the given block––regardless of the content of the collection or the nature of the block.


Make sure to run `bundle install` before running your tests.

<p data-visibility='hidden'>View <a href='https://learn.co/lessons/my-collect' title='My #collect'>My `#collect`</a> on Learn.co and start learning to code for free.</p>
