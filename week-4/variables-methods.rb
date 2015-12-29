##Links
[address](https://github.com/yaboichrissyb/phase-0/tree/master/week-4/address)

[math](https://github.com/yaboichrissyb/phase-0/tree/master/week-4/math)


###Full name greeting:
puts 'Hello there, what\'s your first name?'
first_name=gets.chomp
puts 'Cool, and your middle name?'
middle_name=gets.chomp
puts 'Nice! Last one: what\'s your last name?'
last_name=gets.chomp
puts 'Thanks!  So your full name is ' + first_name + ' ' + middle_name + ' ' + last_name +'?  That\'s a pretty good name.  Pleased to meet you!'

###Bigger, better favorite number:
puts 'What\'s your favorite number?'
favorite_number=gets.chomp
puts 'Hmm...That\'s not bad, but wouldn\'t ' + (favorite_number.to_i + 1).to_s + ' be a better choice?'

=begin
How do you define a local variable?

You can define a local variable simply by choosing a lowercase variable name and setting it equal to a value.

How do you define a method?

You must define a method with the proper method syntax as follows:

def my_method(parameter_1,parameter_2, etc.)
  "Method content ..."

Then you can call the method with the method name and by entering values into the parameters.

What is the difference between a local variable and a method?

A local variable can sit inside a method.  A local variable is one variable to one value while a method can contain multiple variables each with its own changeable value.  A local variable cannot be called outside of its method of origin while a method, once defined, can be called throughout the file.

How do you run a ruby program from the command line?

You can run a ruby program from the command line by navigating to the file directory and then typing 'ruby' followed by the file name.
How do you run an RSpec file from the command line?

You run rspec in much the same way by navigating the file directory and typing 'rspec' followed by the file name.

What was confusing about this material? What made sense?

It was difficult to understand the correct syntax when defining and calling a method.  More examples would have been useful.  The idea of defining your own method makes a lot of sense and seems like it could be very useful in saving time.
=end
