# Simple Loops

## Instructions

1. Fork and clone this lab. Then, open it in sublime and run the test suite with the `learn` or `rspec` command. 
2. This lab requires you to write a series of methods that use the different looping constructs we've covered in this unit. **Read the comments in `simple_looping.rb`.** This is the file where you'll be coding your solution. The comments will help you to solve the lab and get the tests passing. 
3. Each method takes in an argument of an integer. If you call one of the methods with an argument of `4`, your method should loop and `puts` out a phrase `4` times. If you call the same method with an argument of `10`, your method should loop and `puts` out that phrase `10` times. 
3. As you move through the lab, think about the differences between the looping constructs you're utilizing. What are some advantages to using certain constructs? Disadvantages?

##### RSpec — A Closer Look:

Take a look at your `spec/simple_looping_spec.rb` file. You'll notice on line 4 that there is a `before(:each) do` statement. What is this? This is what's called a [`before` hook](https://relishapp.com/rspec/rspec-core/v/2-2/docs/hooks/before-and-after-hooks). What this is doing is taking the code that is inside the `before` hook's block and executing it at the start of each test (denoted by the `it` keyword). For example, this:

```ruby
it "prints out some witty statement from the 1990's" do
  @say_my_name = "Oh snap, Destiny's Child!"
  expect(@say_my_name).to eq("Oh snap, Destiny's Child!")
end
```

can be accomplished by this:

```ruby
before(:each) do
  @say_my_name = "Oh snap, Destiny's Child!"
end

it "prints out some witty statement from the 1990's" do
  expect(@say_my_name).to eq("Oh snap, Destiny's Child!")
end
```

## Resources
- [Bastards Book](http://ruby.bastardsbook.com/) - [Loops](http://ruby.bastardsbook.com/chapters/loops/)
- [Ruby Docs](http://www.ruby-doc.org/) - [Loop](http://www.ruby-doc.org/core-2.2.0/Kernel.html#method-i-loop)
- [Ruby Docs](http://www.ruby-doc.org/) - [Times](http://www.ruby-doc.org/core-2.2.0/Integer.html#method-i-times)
- [Ruby Docs](http://www.ruby-doc.org/) - [While](http://www.ruby-doc.org/core-2.2.0/doc/syntax/control_expressions_rdoc.html#label-while+Loop)
- [Ruby Docs](http://www.ruby-doc.org/) - [Until](http://www.ruby-doc.org/core-2.2.0/doc/syntax/control_expressions_rdoc.html#label-until+Loop)
- [Ruby Docs](http://www.ruby-doc.org/) - [For](http://www.ruby-doc.org/core-2.2.0/doc/syntax/control_expressions_rdoc.html#label-for+Loop)

<p data-visibility='hidden'>View <a href='https://learn.co/lessons/simple-loops' title='Simple Loops'>Simple Loops</a> on Learn.co and start learning to code for free.</p>
