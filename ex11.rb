=begin

Exercise 11: Asking Questions

Now it is time to pick up the pace. You are doing a lot of printing to get you 
familiar with typing simple things, but those simple things are fairly boring. 
What we want to do now is get data into your programs. This is a little tricky 
because you have to learn to do two things that may not make sense right away 
but trust me and do it anyway. It will make sense in a few exercises.

Most of what software does is the following:

- Take some kind of input from a person.
- Change it.
- Print out something to show how it changed.

So far you have been printing strings, but you haven't been able to get any 
input from a person. You may not even know what "input" means, but type this 
code in anyway and make it exactly the same. In the next exercise we'll do more 
to explain input.

NOTE
I use print instead of puts to print the string without a \n (newline) printed 
and the prompt stops right where the user should enter the answer.

Common Student Questions
How do I get a number from someone so I can do math?
That's a little advanced, but try gets.chomp.to_i which says, "Get a string 
from the user, chomp off the \n, and convert it to an integer."

=end

print "How old are you?"
age = gets.chomp
print "How tall are you?"
height = gets.chomp
print "How much do you weigh?"
weigh = gets.chomp

puts "Você tem #{age} anos, #{height} de altura e pesa #{weigh}"

