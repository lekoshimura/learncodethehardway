=begin

Exercise 12: Prompting People for Numbers
You may have noticed in Exercise 11 that you were getting strings from the user. 
How do you get numbers? Type this code in to find out how.

=end

print "Give me a number: "
number = gets.chomp.to_f

bigger = number * 100
puts "A bigger number is #{bigger}"

print "Give me another number: "
another = gets.chomp
number = another.to_i

smaller = number / 100
puts "A smaller number is #{smaller}"

print "Me dá dinheiro: "
dinheiro = gets.chomp.to_f
troco = dinheiro * 0.1
puts "Aqui está seu troco de #{troco}"

