=begin

Exercise 5: More Variables and Printing

Now we'll do even more typing of variables and printing them out. Every time you put " (double-quotes) around a piece of text you have been making a string. A string is how you make something that your program might give to a human. You print strings, save strings to files, send strings to web servers, and many other things.

Strings are really handy, so in this exercise you will learn how to make strings that have variables embedded in them. You embed variables inside a string by using a special #{} sequence and then put the variable you want inside the {} characters. This tells Ruby, "Hey, this string needs to be formatted. Put these variables in there."

As usual, just type this in even if you do not understand it and make it exactly the same.

Common Student Questions

Can I make a variable like this: 1 = 'Zed Shaw'?
No, 1 is not a valid variable name. They need to start with a character, so a1 would work, but 1 will not.

Why does this not make sense to me?
Try making the numbers in this script your measurements. It's weird, but talking about yourself will make it seem more real. Also, you're just starting out so it won't make too much sense. Keep going and more exercises will explain it more.

=end

my_name = 'Zed A. Shaw'
my_age = 35 # not a lie in 2009
my_height = 74 # inches
my_weight = 180 # lbs
my_eyes = 'Blue'
my_teeth = 'White'
my_hair = 'Brown'

puts "Let's talk about #{my_name}."
puts "He's #{my_height} inches tall."
puts "He's #{my_weight} pounds heavy."
puts "Actually that's not too heavy."
puts "He's got #{my_eyes} eyes and #{my_hair} hair."
puts "His teeth are usually #{my_teeth} depending on the coffee."

# this line is tricky, try to get it exactly right
puts "If I add #{my_age}, #{my_height}, and #{my_weight} I get #{my_age + my_height + my_weight}."
