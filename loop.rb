i = 0
loop do
  puts "i is #{i}"
  i += 1
  break if i == 10
end

i = 0;
while i < 10 do
  puts "i is #{i}"
  i += 1
end

while gets.chomp != 'yes' do
  puts 'Are we there yet?'
end

i = 0
until i >= 10 do
  puts "i is #{i}"
  i += 1
end

until gets.chomp == "yes" do
  puts 'Do you like Pizza?'
end

for i in 0..5
  puts "#{i} zombies incoming!"
end

5.times do
  puts 'Hello world'
end

5.times do |number|
  puts "Alternative fact number #{number}"
end

5.upto(10) { |num| print "#{num}" } #=> 5 6 7 8 9 10
10.downto(5) { |num| print "#{num}"} #=> 10 9 8 7 6 5

x = [1, 2, 3, 4, 5]

for i in x.reverse do
  puts i
end

puts 'Done!'

x = gets.chomp.to_i
while x >= 0
  puts x
  x -= 1
end
puts 'Done!'

loop do
  puts 'Do you want to do that again?'
  answer = gets.chomp
  if answer != 'Y'
    break
  end
end

x = 0

while x <= 10
  if x.odd?
    puts x
  end
  x += 1
end

names = %w[Bob Joe Steve Janice Susan Helen]
x = 1

names.each do |name|
  puts "#{x}. #{name}"
  x += 1
end

i = 0
loop do
  puts "i is #{i}"
  i += 1
  break if i == 10
end

i = 0
while i <= 10 do
  puts "i is #{i}"
  i += 1
end

i = 0
until i >= 10 do
  puts "i is #{i}"
  i += 1
end

for i in 0..5
  puts"#{i} zombies amkaming"
end

10.times do |number|
  puts "Alternative fact number #{number}"
  number += 1
end

i = 5
while i <= 10 do
  puts "i is #{i}"
  i += 1
end

5.times do |number|
  puts "Hello, world! #{number}"
end

until gets.chomp == 'yes' do
  puts 'Are we there yet?'
end
