def my_name 
  "Fauzan Dwi Mulyono"
end
puts my_name #=> "Fauzan Dwi Mulyono"

def greet(name = "stranger")
  "Hello, " + name + "!"
end
puts greet("Fauzan") #=> Hello, Fauzan!
puts greet #=> Hello, stranger!


def even_odd(number)
  unless number.is_a? Numeric 
    return "A number is not entered"
  end 

  if number % 2 == 0
    "That's an even number."
  else 
    "That's an odd number."
  end 
end 
puts even_odd("Ruby") #=> A number was not entered.
puts even_odd(16) #=> That's an even number.
puts even_odd(17) #=> That's an odd number.


