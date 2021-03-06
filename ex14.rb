user_name = ARGV.first
prompt = '=>'

puts "Olá, #{user_name}"
puts "Eu gostaria de fazer algumas perguntas."
puts "Você gosta de mim, #{user_name}?" + prompt
likes = $stdin.gets.chomp

# Para quê declarar $stdin.gets ao invés de gets?
# if there is stuff in ARGV, the default gets method tries to treat the first one as a file and read from that. To read from the user's input (i.e., stdin) in such a situation, you have to use it STDIN.gets explicitly.
# http://stackoverflow.com/questions/12041492/ruby-whats-the-difference-between-stdin-gets-and-gets-chomp

puts "Ondocêmora, #{user_name}?", prompt
lives = $stdin.gets.chomp

puts "Que tipo de computador você tem?", prompt
computer = $stdin.gets.chomp

puts """
Alright, so you said #{likes} about liking me.
You live in #{lives}.  Not sure where that is.
And you have a #{computer} computer. Nice.
"""
