friends = ["Sharon", "Leo", "Leila", "Brian", "Arun"]

friends.select { |friend| friend != "Brian" } #=> ["Sharon", "Leo", "Leila", "Arum"]
friends.reject { |friend| friend == "Brian" } #=> ["Sharon", "Leo", "Leila", "Arum"]


my_hash = { "one" => 1, "two" => 2 }

my_hash.each { |key, value| puts "#{key} is #{value}" } 
#=> one is 1
#=> two is 2 
#=> { "one" => 1, "two" => 2 }

my_hash.each { |pair| puts "the pair is #{pair}" }
#=> the pair is ["one", 1]
#=> the pair is ["two", 2]
#=> { "one" => 1, "two" => 2}

fruits = ["apple", "banana", "strawberry", "pineapple"]

fruits.each_with_index { |fruit, index| puts fruit if index.even? }

#=> apple 
#=> strawberry 
#=> ["apple", "banana", "strawberry", "pineapple"]

friends.map { |friend| friend.upcase }
#=> ["SHARON", "LEO", "LEILA", "BRIAN", "ARUN"]
