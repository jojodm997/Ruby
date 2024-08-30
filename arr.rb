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

[1, 2, 3].join #=> "123"
[1, 2, 3].join("-") #=> "1-2-3"
