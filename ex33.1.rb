def push_i(a, inc)

  i = 0
  numbers = []

  while i < a
    puts "At the top i is #{i}"
    numbers.push(i)
    
    i += inc
    puts "Numbers now: " + numbers.to_s
    puts "At the bottom i is #{i}"
  end
  
  puts "The numbers: "
  numbers.each {|num| puts num}
  
end

push_i(4, 2)
