filename = ARGV.first

txt = open(filename)

puts "Aí vai o conteúdo do arquivo: #{filename}:"
print txt.read
txt.close

print "Digite o nome do arquivo novamente: "
file_again = $stdin.gets.chomp

txt_again = open(file_again)
print txt_again.read
txt_again.close
