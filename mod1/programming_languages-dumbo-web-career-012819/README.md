# Nested Data Structures Practice: Iterating and Manipulating

## Objectives
1. Practice iterating over nested data structures
2. Practice building nested data structures

## Instructions

In this lab, you'll be coding your solution in `programming_languages.rb`. The `reformat_languages` method takes in an argument of `languages` and the test suite will call it with an argument of the below hash:

You are given a hash where the keys are the styles of the languages and the values are also hashes. These nested hashes have a key of the name of the language and value of the languages attributes, which is also a hash. These inner-most hashes have key/value pairs of type and type value. Take a look:

```ruby
languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
 
  }
}
```

This is the hash you will be operating on and reformatting, programmatically––meaning you will not simply re-write the hash in order to get the tests passing. 

**Iterate over the hash and build a new hash that has the languages as keys that point to a value of a hash that describes the type and style**.

 It should match the following format:

```ruby
{
  :ruby => {
    :type => "interpreted",
    :style => [:oo]
  },
  :javascript => {
    :type => "interpreted",
    :style => [:oo, :functional]
  },
  :python => {
    :type => "interpreted",
    :style => [:oo]
  },
  :java => {
    :type => "compiled",
    :style => [:oo]
  },
  :clojure => {
    :type => "compiled",
    :style => [:functional]
  },
  :erlang => {
    :type => "compiled",
    :style => [:functional]
  },
  :scala => {
    :type => "compiled",
    :style => [:functional]
  }
}
```

### Tips: 

* Start by setting a variable, let's call it `new_hash` equal to an empty hash. Throughout your iteration over the `languages` hash, you can then add new key/value pairs to `new_hash`. At the end of your method, return `new_hash`. 
* Remember that you can create key/value pairs by using the `[]=` method on a hash. For example: 

```ruby
hash = {}
hash[:my_key] = "my value"

puts hash
#  => {my_key: "my value"}
```

What if we want to create a key/value pair where the value is yet another hash?

```ruby
hash = {}
hash[:my_key] = {second_level_key: "second level value"}

puts hash
#  => 
{
  my_key: {
     second_level_key: "second level value"
  }
}
```

* Remember that you can add items to array using the `<<` method. 
* Remember to use binding.pry to dig into your method and each level of the iteration. Play around with it inside the console. This will help you get the tests passing. 

## Resources

#### Arrays

* [[] method](http://www.ruby-doc.org/core-2.2.0/Array.html#method-i-5B-5D)
* [<< method](http://www.ruby-doc.org/core-2.2.0/Array.html#method-i-3C-3C)
* [Iteration](http://stackoverflow.com/a/310638/2890716)

#### Hashes

* [[]= method](http://www.ruby-doc.org/core-2.2.0/Hash.html#method-i-5B-5D)
* [[] method](http://www.ruby-doc.org/core-2.2.0/Hash.html#method-i-5B-5D)
* [Iteration](http://stackoverflow.com/a/9279884/2890716)

<p data-visibility='hidden'>View <a href='https://learn.co/lessons/programming_languages' title='Nested Data Structures Practice: Iterating and Manipulating'>Nested Data Structures Practice: Iterating and Manipulating</a> on Learn.co and start learning to code for free.</p>
