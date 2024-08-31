num_array = [1, 2, 3, 4, 5]
str_array = ["This", "is", "a", "small", "array"]

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

[1, 2, 3].each_with_index { |val, idx| puts "#{idx+1}. #{val}" }
#=> 1. 1
#=> 2. 2
#=> 3. 3

[5, 3, 8, 2, 4, 1].sort #=> [1, 2, 3, 4, 5, 8]
[1, 2, 3].product([4, 5]) #=> [[1, 4], [1, 5], [2, 4], [2, 5], [3, 4], [3, 5]]


