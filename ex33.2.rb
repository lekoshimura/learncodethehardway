def push_i(a, inc)

  numbers = []

  for i in 0..a
    puts "At the top i is #{i}"
    numbers.push(i)
    
    puts "Numbers now: " + numbers.to_s
    puts "At the bottom i is #{i}"
  end
  
  puts "The numbers: "
  numbers.each {|num| puts num}
  
end

push_i(4, 2)
