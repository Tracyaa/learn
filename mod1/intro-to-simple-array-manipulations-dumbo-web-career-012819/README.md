## Objectives

1. Become comfortable using the official documentation of the Ruby Language.
2. Gain proficiency performing simple array manipulations.
3. Gain proficiency understanding the result of method calls on arrays.


# Introduction To Simple Array Manipulations

In a previous lab, you learned how to create arrays and access the elements of an array. Now you are ready to manipulate arrays using different Ruby methods.

## Instructions

Fork and clone this lab. Run `learn` to see the initial test failures, then write the required methods in the `lib/introduction_to_simple_array_manipulation.rb` file to get the tests to pass. 

Consult the official documentation of the [Ruby Language](http://ruby-doc.org/core-2.2.0/) for the methods you need to use to solve the problems in this lab.

As you read the method descriptions, make sure to pay attention to understanding what the method returns. For instance, when you call `.push` on an array, it returns the updated array:

```ruby
artists = ["Hozier", "Ariana Grande", "Usher"]
next_artist = "Beyonce"
artists.push(next_artist)
# => ["Hozier", "Ariana Grande", "Usher", "Beyonce"]
```

However, `.pop` works a little differently; it *removes* (and returns) the last element from an array:

```ruby
artists = ["Frida Kahlo", "Pablo Picasso", "Cai Guo-Qiang"]
artists.pop
# => "Cai Guo-Qiang"

artists
# => ["Frida Kahlo", "Pablo Picasso"]
```

You can see that while `.pop` removes `"Cai Guo-Qiang"` from the `artists` array, `.pop` also supplies `"Cai Guo-Qiang"` as its return.

**Top-tip:** *One of the most common problems you will encounter on your journey to becoming a software developer is not knowing what object a method returns. For example, you might assume that the result of a method call is a string but instead it is an array.*  

<p data-visibility='hidden'>View <a href='https://learn.co/lessons/intro-to-simple-array-manipulations' title='Objectives'>Objectives</a> on Learn.co and start learning to code for free.</p>
