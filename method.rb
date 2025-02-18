def my_name
  'Fauzan Dwi Mulyono'
end
puts my_name #=> "Fauzan Dwi Mulyono"

def greet(name = 'stranger')
  'Hello, ' + name + '!'
end
puts greet('Fauzan') #=> Hello, Fauzan!
puts greet #=> Hello, stranger!

def even_odd(number)
  unless number.is_a? Numeric
    return 'A number is not entered'
  end

  if number % 2 == 0
    "That's an even number."
  else
    "That's an odd number."
  end
end
puts even_odd('Ruby') #=> A number was not entered.
puts even_odd(16) #=> That's an even number.
puts even_odd(17) #=> That's an odd number.

phrase = %w[be to not or be to]
puts phrase.reverse.join(' ').capitalize
#=> "To be or not to be"

puts 5.even? #=> false
puts 6.even? #=> true
puts 17.odd? #=> true

puts 12.between?(10, 15) #=> true

whisper = 'HELLO EVERYBODY'
puts whisper.downcase #=> "HELLO EVERYBODY"
puts whisper #=> Without bang ! "HELLO EVERYBODY" with bang whisper.downcase! "hello everybody"

def add(a, b)
  a + b
end
add(20, 45) #=> 65

def subtract(a, b)
  a - b
end
subtract(80, 10) #=> 70

def multiply(num1, num2)
  num1 * num2
end
multiply(add(20, 45), subtract(80, 10)) #=> 65 * 70 = 4550
add(subtract(80, 10), multiply(subtract(20, 6), add(30, 5))) #=> 70 + (14 * 35) = 560

# Traditional paratemers
def greett(name, age)
  puts "Hello, #{name}! You are #{age} years old."
end

greet('Montells', 44)
#=> Hello, Montells! You are 44 years old.
greet(44, 'Montells')
#=> Hello, 44! You are Montells years old.

# Keyword Arguments
def greet(name:, age:)
  puts "Hello, #{name}! You are #{age} years old."
end

greet(name: 'Montells', age: 44)
#=> Hello, Montells! You are 44 Years old.
greet(age: 44, name: 'Montells')
#=> Hello, Montells! You are 44 Years old.

# Traditional parameters
def create_user(name, age = 18, country = 'Unknown')
  puts "Name: #{name}, Age: #{age}, Country: #{country}"
end
create_user('Montells', 'Cuba') # I want to omit age
#=> Name: Montells, Age: Cuba, Country: Unknown

# Keyword Arguments
def create_user(name:, age: 44, country: 'Unknown')
  puts "User: #{name}, Age: #{age}, Country: #{country}"
end

create_user(name: 'Montells', country: 'Cuba')
#=> User: Montells, Age: 44, Country: Cuba
