the_count = [1,2,3,4,5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

# é maneira de escrever laços mais parecida com outras linguages
for number in the_count do
  puts "This is count #{number}"
end

puts "É maneira favorita de escrever loops do rubystas"
# Talvez seja porque é OOP enquanto que "for" tem uma cara procedural
fruits.each do |fruit|
  puts "A fruit of type #{fruit}"
end

puts "outra sintaxe de laço"
change.each {
  |i| puts "I got #{i}"
}

puts "adicionando elementos a um array"
elements = []

(0..5).each do |i|
  elements.push(i)
end

elements.each do |i|
  puts i
end

puts "outra sintaxe de adição de elemento a um array"
elements << "6"
elements.each do |i|
  puts i
end
