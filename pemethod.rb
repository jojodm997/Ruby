numbers = [5, 6, 7, 8]

numbers.include?(5) #=> true 
numbers.include?(3) #=> false 

friends = ["Sharon", "Leo", "Leila", "Brian", "Arun"]

invited_list = friends.select { |friend| friend != "Brian" }
invited_list.include?("Brian") #=> false

numbers = [21, 42, 303, 499, 550, 811]

numbers.any? { |number| number > 500 } #=> true 
numbers.any? { |number| number < 20 } #=> false 

fruits = ["apple", "banana", "strawberry", "pineapple"]

fruits.all? { |fruit| fruit.length > 3 } #=> true 
fruits.all? { |fruit| fruit.length > 6 } #=> false 

fruits.none? { |fruit| fruit.length > 10 } #=> true 
fruits.none? { |fruit| fruit.length > 6 } #=> false 

[1].one? #=> true 
[1, 2].one? #=> false 

[1, 2, 3].all?(1..10) #=> true
