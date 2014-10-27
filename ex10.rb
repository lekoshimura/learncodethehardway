=begin

===========================
Exercise 10: What Was That?
===========================

In Exercise 9 I threw you some new stuff, just to keep you on your toes. I 
showed you two ways to make a string that goes across multiple lines. In the 
first way, I put the characters \n (backslash n) between the names of the 
months. These two characters put a new line character into the string at that 
point.

This \ (backslash) character encodes difficult-to-type characters into a string.
There are various "escape sequences" available for different characters you 
might want to use. We'll try a few of these sequences so you can see what I 
mean.

An important escape sequence is to escape a single-quote ' or double-quote ". 
Imagine you have a string that uses double-quotes and you want to put a 
double-quote inside the string. If you write "I "understand" joe." then Ruby 
will get confused because it will think the " around "understand" actually ends 
the string. You need a way to tell Ruby that the " inside the string isn't a 
real double-quote.

To solve this problem you escape double-quotes and single-quotes so Ruby knows 
to include in the string. Here's an example:

"I am 6'2\" tall."  # escape double-quote inside string
'I am 6\'2" tall.'  # escape single-quote inside string
The second way is by using triple-quotes, which is just """ and works like a 
string, but you also can put as many lines of text as you want until you 
type """ again. We'll also play with these.

================
Escape Sequences
================

This all of the escape sequences Ruby supports. You may not use many of these, 
but memorize their format and what they do anyway. Try them out in some strings
to see if you can make them work.

ESCAPE	WHAT IT DOES.
\\	Backslash ()
\'	Single-quote (')
\"	Double-quote (")
\a	ASCII bell (BEL)
\b	ASCII backspace (BS)
\f	ASCII formfeed (FF)
\n	ASCII linefeed (LF)
\r ASCII	Carriage Return (CR)
\t ASCII	Horizontal Tab (TAB)
\uxxxx	Character with 16-bit hex value xxxx (Unicode only)
\v	ASCII vertical tab (VT)
\ooo	Character with octal value ooo
\xhh	Character with hex value hh

========================
Common Student Questions
========================

What if I wanted to start the months on a new line?
You simply start the string with \n like this:
"\nJan\nFeb\nMar\nApr\nMay\nJun\nJul\nAug"

I still haven't completely figured out the last exercise. Should I continue?
Yes, keep going. Instead of stopping, take notes listing things you don't 
understand for each exercise. Periodically go through your notes and see if you 
can figure these things out after you've completed more exercises. Sometimes 
though you may need to go back a few exercises and do them again.

What makes \\ special compared to the other ones?
It's simply the way you would write out one backslash (\) character. Think 
about why you would need this.

When I write // or /n it doesn't work.
That's because you are using a forward-slash / and not a backslash \. They are 
different characters that do very different things.

I don't get Study Drill 3. What do you mean by "combine" escape sequences and 
formats?
One concept I need you to understand is that each of these exercises can be 
combined to solve problems. Take what you know about format strings and write 
some new code that uses format strings and the escape sequences from this 
exercise. What's better, ''' or """? Use ''' when you need a multi-line string 
that contains #{} formatting, but you don't want them to be processed yet or at 
all. Use """ for all other multi-line strings.

=end

tabby_cat = "\tI'm tabbed in."
persian_cat = "I'm split\non a line."
backslash_cat = "I'm \\ a \\ cat."

fat_cat = """
I'll do a list:
\t* Cat food
\t* Fishies
\t* Catnip\n\t* Grass
"""

puts tabby_cat
puts persian_cat
puts backslash_cat
puts fat_cat

puts "1a parte \f2a parte \f3a parte"
puts "Horizont \ttab"
puts "Vertical \vTab"
