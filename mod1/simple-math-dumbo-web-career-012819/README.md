# Math

## Objectives

1. Practice doing basic math in Ruby
2. Understand how division in Ruby differs from normal division
3. Understand the modulo operator
4. Play with the Math module
5. Create appropriate behavior for methods

## Introduction

Programming languages have basic arithmetic built-in. The `+`, `-`, `*`, and `/` methods are part of Ruby.

Ruby can perform any operation that a simple calculator can. Open up IRB (open your terminal then type `irb` and hit enter) and type the commands below:

* `1 + 1`
* `1 * 3`
* `Math.sqrt(81)`
* `9 ** 2`

## Order of Operations

Enclosing an expression in parentheses `()` defines an order of operations, like you would [expect](http://en.wikipedia.org/wiki/Order_of_operations).

* `98 + 59/13 * 8 * -5 = -62`
* `98 + (59/(13*8)) * -5 = 98`

## Division and Intro to Floats

Type `9 / 2`. You would expect the result to be 4.5, but it's actually 4. This is because of the type of number you are using. In Ruby, and most programming languages, numbers can be integers (whole numbers), or floats(decimal numbers). When you divide  integers, they return integers without rounding. The decimal is just removed. If you type 9.0, you're creating a float, so  `9.0 / 2.0 = 4.5`. Numbers with decimals are called floats and when you divide floats a float is returned. If you divide a float and an integer, a float will be returned, so `9.0/2 = 4.5`.

## Modulo operator

There is another operator that is really useful in programming. It's the modulo, and it's represented with the percent sign `%`. The modulo operator gives you the remainder of a number divided by another number. So `5 % 3 = 2`.

## Math module

Ruby has built-in methods for common math functions. The basic trigonometric and transcendental functions are available in the [Math module](http://ruby-doc.org/core-2.2.0/Math.html). This gives you access to mathematic tools such as square root, sine, cosine, and tangent via Ruby methods. To access these in your code simply refer to the module `Math` and call the method on the module. For example, to get the square root of 9 you'd write `Math.sqrt(9)`. [Read more about the Math module and the available methods.](http://ruby-doc.org/core-2.2.0/Math.html)

## Instructions

Fork and clone this repo and open `lib/math.rb`. You'll find a bunch of empty methods that take numbers as arguments. Build the appropriate behavior for each of the following methods:
- addition
- subtraction
- multiplication
- division
- modulo
- square root
- order of operation

The lab is test driven, so get the tests to pass.

<p data-visibility='hidden'>View <a href='https://learn.co/lessons/simple-math' title='Math'>Math</a> on Learn.co and start learning to code for free.</p>
