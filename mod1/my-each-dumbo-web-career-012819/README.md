# My Each

## Objectives

1. Define a method that uses `yield` and a `while` loop to pass each element of a collection to a block.
2. Gain a deeper understanding of the common iterator `#each`.

## Instructions

**Note:** Some of the tests may be passing before you write any code. But, in order to get all of the tests passing you'll need to use the `yield` keyword correctly.

Now that you know how the `yield` method works, try to write your own version of the `#each` method without using the `#each` method provided by Ruby.

You'll be building out the content of the `#my_each` method. This method should accept an argument of an array and use the `while` loop to iterate over each member of that array, yielding each element contained in the array to a block.

Here's an example of what should happen when you call your `my_each` method:

```ruby
collection = [1, 2, 3, 4]
my_each(collection) do |i|
  puts i
end
```

This should output:

```ruby
1
2
3
4
```

and return:

```ruby
#=> [1, 2, 3, 4]
```

Just like the real `#each` method.
<p data-visibility='hidden'>View <a href='https://learn.co/lessons/my-each' title='My Each'>My Each</a> on Learn.co and start learning to code for free.</p>
