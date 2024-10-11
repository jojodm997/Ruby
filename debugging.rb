def isogram?(string)
  original_length = string.length
  string_array = string.downcase.split("")
  p string_array
  unique_length = string_array.uniq.length
  p unique_length
  original_length == unique_length
end

isogram?("Odin")

require 'pry-byebug'

def isogram?(string)
  original_length = string.length 
  string_array = string.downcase.split 

  binding.pry 
  
  unique_length = string_array.uniq.length 
  original_length == unique_length
end 

isogram?("Odin")

require 'pry-byebug'

def yell_greeting(string)
  name = string 

  binding.pry 

  name = name.upcase 
  greeting = "WASSAP, #{name}!"
  puts greeting 
end 

yell_greeting("bob")


a = 10 
b = "42"

begin 
  a + b 
rescue 
  puts "Could not add variables a (#{a.class}) and b (#{b.class})"
else 
  puts "a + b is #{a + b}"
end 

values = [42, 'a', 'r', 9, 5, 10022, 8.7, "sharon", "Libya", "Mars", "12", 98, rand + rand, {:dog=>'cat'}, 100, nil, 200.0000, Object, 680, 3.14, "Steve", 78, "Argo"].shuffle

while values.length > 0 
  c = values.pop 
  d = values.pop

  begin 
    c + d
  rescue 
    puts "Could not add variables a {#{c.class}} and b (#{d.class})"
  else 
  puts "a + b is #{c + d}"
  end
end

