num_array = [1, 2, 3, 4, 5]
str_array = ["This", "is", "a", "small", "array"]
str_array.size #=> 5

Array.new #=> []
Array.new(3) #=> [nil, nil, nil]
Array.new(3, 7) #=> [7, 7, 7]
Array.new(3, true) #=> [true, true, true]

str_array[0] #=> "This"
str_array[1] #=> "is"
str_array[4] #=> "array"
str_array[-1] #=> "array"
str_array[-2] #=> "small"

str_array.first #=> "This"
str_array.first(2) #=> ["This", "is"]
str_array.last(2) #=> ["small", "array"]


new_array = [1, 2]

new_array.push(3, 4) #=> [1, 2, 3, 4]
new_array << 5 #=> [1, 2, 3, 4, 5]
new_array.pop #=> 5
new_array #=> [1, 2, 3, 4]


no_array = [2, 3, 4]

no_array.unshift(1) #=> [1, 2, 3, 4]
no_array.shift #=> 1
no_array #=> [2, 3, 4]

numa_array = [1, 2, 3, 4, 5, 6]

numa_array.pop(3) #=> [4, 5, 6]
numa_array.shift(2) #=> [1, 2]
numa_array #=> [3]

[1, 2, 3] + [3, 4, 5] #=> [1, 2, 3, 3, 4, 5,]
a = [1, 2, 3]
b = [3, 4, 5]
a + b #=> [1, 2, 3, 3, 4, 5,]
a.concat(b) #=> [1, 2, 3, 3, 4, 5]

[1, 1, 1, 1, 2, 2, 3, 4] - [1, 4] #=> [2, 2, 3]

[].empty? #=> true 
[[]].empty? #=> false 
[1, 2].empty? #=> false 

[1, 2, 3].length #=> 3
[1, 2, 3].reverse #=> [3, 2, 1]

[1, 2, 3].include?(3) #=> true 
[1, 2, 3].include?("3") #=> false 
[1, 2, 3].include?(4) #=> false 

[1, 2, 3].join #=> "123"
[1, 2, 3].join("-") #=> "1-2-3"

[1, 2, 3, 4, [5, 6], [7, 8]].flatten #=> [1, 2, 3, 4, 5, 6, 7, 8]

arrys = [1, 2, 3]
arrys.first #=> 1 
arrys.last #=> 3

a = [1, 2, 3, 4]
a.map { |num| num**2 } #=> [1. 4. 9. 16]
a.collect { |num| num**2 } #=> [1, 4, 9, 16]

a.delete_at(1) # 2
a #=> [1, 3, 4]

my_pets = ["cat", "dog", "bird", "cat", "snake"]
my_pets.delete("cat") #=> "cat"
my_pets #=> ["dog, bird, snake"]

b = [1, 1, 2, 2, 3, 3, 4, 4] 
b.uniq #=> [1, 2, 3, 4]
b #=> [1, 1, 2, 2, 3, 3, 4, 4]
b.uniq! #=> [1, 2, 3, 4]
b #=> [1, 2, 3, 4]

# uniq and uniq! are two different methods for Ruby Arrays. You cannot simply append a ! onto any method and achieve a destructive operation.

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
numbers.select { |numb| numb > 4 } #=> [5, 6, 7, 8, 9, 10]
numbers #=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

teams = [["Joe", "Steve"], ["Frank", "Molly"], ["Dan", "Sara"]]
teams[1] #=> ["Frank", "Molly"]

yoink = [2, 3, 4]
yoink.unshift(1) #=> [1, 2, 3, 4]
"It's easy as #{yoink}" #=> "It's easy as [1, 2, 3, 4]" ruby does to_s behind the scene

[1, 2, 3].each_index { |i| puts "This is index #{i}" }
#=> This is index 0 
#=> This is index 1 
#=> THis is index 2 

[1, 2, 3].each_with_index { |val, idx| puts "#{idx + 1}. #{val}" }
#=> 1. 1
#=> 2. 2
#=> 3. 3

[5, 3, 8, 2, 4, 1].sort #=> [1, 2, 3, 4, 5, 8]
[1, 2, 3].product([4, 5]) #=> [[1, 4], [1, 5], [2, 4], [2, 5], [3, 4], [3, 5]]

[1, 2, 3].each { |e| puts e + 2 }
#=> 3
#=> 4 
#=> 5
#=> [1, 2, 3]

# if no block, Enumerator is return

[1, 2, 3].map { |a| puts x**2 }
#=> 1 
#=> 4 
#=> 9
#=> [nil, nil, nil]

arr = [["test", "hello", "world"],["example", "mem"]]
arr[1][0] #=> "example"

arryp = [15, 7, 18, 5, 12, 8, 5, 1]
arryp.index(5) #=> 3: 5 (This is the first occurrence of 5.)

string = "Welcome to America!"
a = string[6] #=> "e"
b = string[11] #=> "A"

names = ['bob', 'joe', 'susan', 'margaret']
names[3] = 'jody'   # => ["bob", "joe", "susan", "jody"]

# cool 
arr = [1, 2, 3, 4, 5]
new_arr = []

arr.each do |n|
  new_arr << n + 2
end

p arr
p new_arr

letters = %w(a b c d) # Avoid quotation mark ""
letters.join # "abcd"
letters.join (" ")

users = [
  [1, "Fauzan"],
  [2, "Dwi"]
] # 2d array 

users[0][0] # 1 
users[0][1] # "Fauzan"
users.flatten # [1, "Fauzan", 2, "Dwi"]

userd = userd.map { |user| user.capitalize }
userd = userd.ap(&:capitalize)

numbers = [3, 7, 12, 2, 49]
numbers.slect { |n| n > 10 } #=> 12, 49

[1, 3, 3, 5, 5].uniq #=> [1, 3, 5]

numbers.sample #=> random element
numbers.take(3) #=> [3, 7, 12]
numbers[0,3] #=> [3, 7, 12] 
numbers[1..-1] #=> [3, 7, 12, 2, 49]

numbers << nil
# [1, 3, 3, 5, 5, nil]
numbers.compact
# [1, 3, 3, 5, 5]

users.concat(new_users) # merge two array 
users = users - users_to_delete # remove elements
users & new_users # get the elements that appear in two arrays in the same time
