friends = %w[Sharon Leo Leila Brian Arun]

friends.select { |friend| friend != 'Brian' } #=> ["Sharon", "Leo", "Leila", "Arum"]
friends.reject { |friend| friend == 'Brian' } #=> ["Sharon", "Leo", "Leila", "Arum"]

my_hash = { 'one' => 1, 'two' => 2 }

my_hash.each { |key, value| puts "#{key} is #{value}" }
#=> one is 1
#=> two is 2
#=> { "one" => 1, "two" => 2 }

my_hash.each { |pair| puts "the pair is #{pair}" }
#=> the pair is ["one", 1]
#=> the pair is ["two", 2]
#=> { "one" => 1, "two" => 2}

fruits = %w[apple banana strawberry pineapple]

fruits.each_with_index { |fruit, index| puts fruit if index.even? }
#=> apple
#=> strawberry
#=> ["apple", "banana", "strawberry", "pineapple"]

friends.map(&:upcase) #=> ["SHARON", "LEO", "LEILA", "BRIAN", "ARUN"]

my_order = ['medium Big Mac', 'medium fries', 'medium milkshake']

my_order.map { |item| item.gsub('medium', 'extra large') } #=> ["extra large Big Mac", "extra large fries", "extra large milkshake"]

salaries = [1200, 1500, 1100, 1000]

salaries.map { |salary| salary - 700 } #=> [500, 800, 400, 1100]

responses = { 'Sharon' => 'yes', 'Leo' => 'no', 'Leila' => 'no', 'Arun' => 'yes' }
responses.select { |_person, responses| responses == 'yes' } #=> {"Sharon"=>"yes", "Arun"=>"yes"}

my_numbers = [5, 6, 7, 8]

my_numbers.reduce { |sum, number| sum + number } #=> 26

my_number = [5, 6, 7, 8]

my_number.reduce(1000) { |sum, number| sum + number } #=> 1026

votes = ["Bob's Dirty Burger Shack", "St. Mark's Bistro", "Bob's Dirty Burger Shack"]

votes.reduce(Hash.new(0)) do |result, vote|
  puts result
  result[vote] += 1
  result
end
#=> {"Bob's Dirty Burger Shack"=>2, "St. Mark's Bistro"=>1}

friends = %w[Sharon Leo Leila Brian Arun]

friends.map!(&:upcase)
#=> ["SHARON", "LEO", "LEILA", "BRIAN", "ARUN"]
friends
#=> ["SHARON", "LEO", "LEILA", "BRIAN", "ARUN"] mutate the original value

my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 100]

my_array.select(&:even?) #=> [2, 4, 6, 8, 100]

my_array.collect { |num| num ** 2 } #=> [1, 4, 9, 16, 25, 36, 49, 64, 81, 10000]

my_hash = { 'Joe' => 'male', 'Jim' => 'male', 'Patty' => 'female' }
my_hash.select { |_name, gender| gender == 'male' } #=> {"Joe" => "male", "Jim" => "male"}

names = %w[James Bob Joe Mark Jim]
names.group_by(&:length) #=> {5=>["James"], 3=>["Bob", "Joe", "Jim"], 4=>["Mark"]}
names.grep(/J/) #=> ["James", "Joe", "Jim"]

['11', '21', '5'].map(&:to_i) #=> [11, 21, 5]

numbers = [5, 6, 7, 8]

numbers.include?(5) #=> true
numbers.include?(3) #=> false

friends = %w[Sharon Leo Leila Brian Arun]

invited_list = friends.reject { |friend| friend == 'Brian' }
invited_list.include?('Brian') #=> false

numbers = [21, 42, 303, 499, 550, 811]

numbers.any? { |number| number > 500 } #=> true
numbers.any? { |number| number < 20 } #=> false

fruits = %w[apple banana strawberry pineapple]

fruits.all? { |fruit| fruit.length > 3 } #=> true
fruits.all? { |fruit| fruit.length > 6 } #=> false

fruits.none? { |fruit| fruit.length > 10 } #=> true
fruits.none? { |fruit| fruit.length > 6 } #=> false

[1].one? #=> true
[1, 2].one? #=> false

[1, 2, 3].all?(1..10) #=> true
