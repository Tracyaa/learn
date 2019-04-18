# Reverse Each Word

## Objectives

1. Understand the return value of the each method
2. Use the .collect method
3. Understand the return value of the .collect method
4. Use the return of collect for further operation

## Instructions

Fork and clone this repository. Run the test suite with the `learn` command.

Write a method called `reverse_each_word` that takes in a string argument of a sentence and returns that same sentence with each word reversed in place.

First solve it using `.each` Then utilize the same method using `.collect` to see the difference.

For example:

```ruby
reverse_each_word("Hello there, and how are you?")
  #=> "olleH ,ereht dna woh era ?uoy"
```

**Hint:** *You can't use an enumerator on a string, so how can we turn our string into an array?*

**Hint:** *How can we reverse each word and return those altered words? Remember that* `.each` *returns the original array but other enumerators don't.*

<p data-visibility='hidden'>View <a href='https://learn.co/lessons/reverse-each-word' title='Reverse Each Word'>Reverse Each Word</a> on Learn.co and start learning to code for free.</p>
