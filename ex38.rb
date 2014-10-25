dez_coisas = "pilha palito lampada teclado computador mouse"

puts "Um momento! Não há 10 coisaas na lista. Vamos arrumar."

coisas = dez_coisas.split(' ');
mais_coisas = ["baixo", "guitarra", "bateria", "amplificador", "microfone", "pedestal", "pedal" ]

while coisas.length != 10 do 
  proxima_coisa = mais_coisas.pop
  puts
  puts "Adicionando #{proxima_coisa}"
  coisas.push(proxima_coisa)
  puts "Agora tem #{coisas.length} elementos"
end

puts
puts "Pronto: ", coisas

puts
puts "coisas[1]: ".ljust(24) + coisas[1]
puts "coisas[-1]: ".ljust(24) + coisas[-1] # whoa! fancy
puts "coisas.pop(): ".ljust(24) + coisas.pop()
puts "coisas.join(' '): ".ljust(24) + coisas.join(' ')
puts "coisas[3..5].join('#'): ".ljust(24) + coisas[3..5].join("#")
