states = {
  'Oregon' => 'OR',
  'Florida' => 'FL',
  'California' => 'CA',
  'New York' => 'NY',
  'Michigan' => 'MI'
}

cities = {
  'CA' => 'San Francisco',
  'MI' => 'Detroit',
  'FL' => 'Jacksonville'
}

# adicionando mais cidades
cities['NY'] = 'New York'
cities['OR'] = 'Portland'

# Mostrando algumas cidades
puts "-" * 10
puts "NY state has : #{cities['NY']}"
puts "OR state has : #{cities['OR']}"

# Mostrando alguns estados
puts "-" * 10
puts "A abreviação do estado de Michigan é : #{states['Michigan']}"
puts "A abreviação do estado da Florida é  : #{states['Florida']}"

# Usando sintaxe encadeada
puts "-" * 10
puts "MI state has : #{cities[states['Michigan']]}"
puts "FL state has : #{cities[states['Florida']]}"

# imprime todas as siglas de estados
puts "-" * 10
states.each do |estado, abrev|
  puts "Estado: #{estado}".ljust(19) + "- Sigla: #{abrev}".ljust(16)
end

#imprime as cidades
puts '-' * 10
cities.each do |abbrev, cidade|
  puts "#{abbrev} tem a cidade #{cidade}"
end

# agora, cidades e estados ao mesmo tempo
puts "-" * 10
states.each do |estado, abrev|
  cidade = cities[abrev]
  puts "#{estado}".ljust(12) + " tem a sigla #{abrev} e a cidade #{cidade}"
end

puts '-' * 10
# by default ruby says "nil" when something isn't in there
state = states['Texas']

if !state
  puts "Sorry, no Texas."
end

# default values using ||= with the nil result
city = cities['TX']
city ||= 'Does Not Exist'
puts "The city for the state 'TX' is: #{city}"

city = cities['AA']
puts "The city for the state 'AA' is: #{city}"
