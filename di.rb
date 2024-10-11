while 1 
  puts "Enter a Number"
  num = Kernel.gets.match(/\d+/)[0]
  puts "#{num} + 1 is : #{num + 1}"
end


