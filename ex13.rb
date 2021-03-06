=begin

Exercise 13: Parameters, Unpacking, Variables

In this exercise we will cover one more input method you can use to pass 
variables to a script (script being another name for your .rb files). You know 
how you type ruby ex13.rb to run the ex13.rb file? Well the ex13.rb part of the 
command is called an "argument." What we'll do now is write a script that also 
accepts arguments.

The ARGV is the "argument variable," a very standard name in programming, that 
you will find used in many other languages. This variable holds the arguments 
you pass to your Ruby script when you run it. In the exercises you will get to 
play with this more and see what happens.

Line 1 "unpacks" ARGV so that, rather than holding all the arguments, it gets 
assigned to four variables you can work with: first, second, and third. This 
may look strange, but "unpack" is probably the best word to describe what it 
does. It just says, "Take whatever is in ARGV, unpack it, and assign it to all 
of these variables on the left in order."

After that we just print them out like normal.

Type: 

$ ruby ex13.rb first 2nd 3rd

Common Student Questions

What's the difference between ARGV and gets.chomp?
The different has to do with where the user is required to give input. If they 
give your script inputs on the command line, then you use ARGV. If you want 
them to input using the keyboard while the script is running, then use 
gets.chomp.

Are the command line arguments strings?
Yes, they come in as strings, even if you typed numbers on the command line. 
Use .to_i to convert them just like with gets.chomp.to_i.

How do you use the command line?
You should have learned to use it real quick by now, but if you need to learn it 
at this stage, then read the Command Line Crash Course I wrote for this book in 
Appendix A.

I can't combine ARGV with gets.chomp.
Don't overthink it. Just slap two lines at the end of this script that uses 
gets.chomp to get something and then print it. From that start playing with 
more ways to use both in the same script.

Why can't I do this gets.chomp = x?
Because that's backward to how it should work. Do it the way I do it and it'll 
work.

=end

first, second, third = ARGV

puts "a primeira variável é: #{first}"
puts "a terceira variável é: #{second}"
puts "a segunda variável é: #{third}"
puts ARGV.class
