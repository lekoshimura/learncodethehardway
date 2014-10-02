from_file, to_file = ARGV

in_file = open(from_file)
in_data = in_file.read

puts "O arquivo #{from_file} tem #{in_data.length} bytes"

puts "O arquivo de destino #{to_file} existe? #{File.exist?(to_file)}"
puts "CTRL + C: pára \nENTER: continua"

out_file = open(to_file, 'w')
out_file.write(in_data)

puts "Acabou!"

in_file.close
out_file.close
