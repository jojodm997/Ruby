# nested array or multidimensional array
test_scores = [
  [97, 76, 79, 93],
  [79, 84, 76, 79],
  [88, 67, 64, 76],
  [94, 55, 67, 81]
]

teacher_mailboxes = [
  ["Adams", "Baker", "Clark", "Davis"],
  ["Jones", "Lewis", "Lopez", "Moore"],
  ["Parez", "Scott", "Smith", "Young"]
]

teacher_mailboxes[0][0] #=> "Adams"
teacher_mailboxes[1][0] #=> "Jones"
teacher_mailboxes[2][0] #=> "Perez"

teacher_mailboxes[0][-1] #=> "Davis"
teacher_mailboxes[-1][0] #=> "Perez"
teacher_mailboxes[-1][-2] #=> "Smith" 

teacher_mailboxes[3][0] #=> NoMethodError
teacher_mailboxes.dig(3, 0) #=> nil 
teacher_mailboxes[0][4] #=> nil 


mutable = Array.new(3, Array.new(2))
#=> [[nil, nil], [nil, nil], [nil, nil]]
mutable[0][0] = 1000
#=> 1000 
mutable 
#=> [[1000, nil], [1000, nil], [1000, nil]] 


immutable = Array.new(3) { Array.new(2) }
#=> [[nil, nil], [nil, nil], [nil, nil]]
immutable[0][0] = 1000 
#+> 1000 
immutable 
#=> [[1000, nil], [nil, nil], [nil, nil]]

test_scores << [100, 99, 98, 97]
#=> [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81], [100, 99, 98, 97]]
test_scores[0].push(100)
#=> [97, 76, 79, 93, 100]
test_scores
#=> [[97, 76, 79, 93, 100], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81], [100, 99, 98, 97]]
test_scores.pop
#=> [100, 99, 98, 97]
test_scores[0].pop 
#=> 100
test_scores
#=> [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81]]

teacher_mailboxes.each_with_index do |row, row_index|
  puts "Row:#{row_index} = #{row}" 
end 
#=> Row:0 = ["Adams", "Baker", "Clark", "Davis"]
#=> Row:1 = ["Jones", "Lewis", "Lopez", "Moore"]
#=> Row:2 = ["Perez", "Scott", "Smith", "Young"]
#=> [["Adams", "Baker", "Clark", "Davis"], ["Jones", "Lewis", "Lopez", "Moore"], ["Perez", "Scott", "Smith", "Young"]]

teacher_mailboxes.each_with_index do |row, row_index|
  row.each_with_index do |teacher, column_index| 
    puts "Row:#{row_index} Column:#{column_index} = #{teacher}"
  end 
end


