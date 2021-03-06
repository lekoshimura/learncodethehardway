filename = ARGV.first

puts "Nós vamos apagar #{filename}"
puts "Se você não desejar isso, pressiona CTRL + C (^C)."
puts "Se você desejar isso, pressione ENTER."

$stdin.gets

puts "Abrindo o arquivo..."
target = open(filename, 'w')

puts "Truncando o arquivo. Adeus!"
target.truncate(0)

puts "Agora vou te pedir três linhas."

print "Linha 1: "
line1 = $stdin.gets.chomp
print "Linha 2: "
line2 = $stdin.gets.chomp
print "Linha 3: "
line3 = $stdin.gets.chomp

puts "Vou gravar as três linhas no arquivo."

formatter = "%{line1} \n%{line2} \n%{line3}"
s = formatter % {line1: line1, line2: line2, line3: line3}
target.write(s)
puts s

puts "E, finalmente, nós fecharemos o arquivo."
target.close

# Q: If you open the file with 'w' mode, then do you really need the target.truncate()? 
# A: "w"  Write-only, truncates existing file zero length or creates a new file for writing. http://www.ruby-doc.org/core-2.1.3/IO.html#method-c-new
