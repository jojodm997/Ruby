if statement_to_be_evaluated == true
  # do something
end

if room_tidy == true
  "I can play video games"
end

if 1 < 2
  puts "1 is less than 2!"
end

puts "1 is less than 2" if 1 < 2

if attack_by_land == true
  puts "release the goat"
elsif attack_by_sea == true 
  puts "release the shark"
else 
  puts "release Kevin the octopus"
end

5 == 5 #=> true 
5 == 4 #=> false 

5 != 7 #=> true 
5 != 5 #=> false 

7 > 5 #=> true 
5 > 7 #=> false 

5 < 7 #=> true 
7 < 5 #=> false 

7 >= 7 #=> true 
7 >= 5 #=> true 

5 <= 5 #=> true 
5 <= 7 #=> true 

5.eql?(5.0) #=> false becasue integer and float
5.eql?(5) #=> true 

a = 5 
b = 5 
a.equal?(b) #=> true, if you put string value in a and b it will return false 

5 <=> 10 #=> -1 
10 <=> 10 #=> 0 
10 <=> 5 #=> 1 

if 1 < 2 && 5 > 6
  puts "Sleep"
end
# Is the same as
if 1 < 2 and 5 > 6
  puts "Sleep"
end


if 10 < 2 || 5 < 6
  puts "Sleep"
end 
# Is the same as
if 10 < 2 or 5 < 6
  puts "Sleep"
end

if !false #=> true 
if !(10 < 5) #=> true

grade = 'F'

did_i_pass = case grade #=> create a variable `did_i_pass` and assign the result of a call to case with the variable grade passed in
  when "A" then "Hell yeah"
  when "D" then "Don't tell your mother."
  else "'You shall not pass' -Gandalf"
end

grades = 'F'

case grade 
when 'A'
  puts "You're genius"
  future_bank_account_balance = 5_000_000_000
when 'D'
  puts "Better luck nex time"
  can_i_retire_soon = false 
else 
  puts "'YOU SHALL NOT PASS' -Gandalf"
  fml = true 
end

age = 19 
puts "Welcome to a life of debt." unless age < 18

unless age < 18 
  puts "Carefull now!"
else 
  puts "Careful now!"
end

ages = 19 
response = ages < 18 ? "You still have your entire life ahead of you" : "You're all grown up."
puts response #=> "You're all grown up"

puts "Put in a number"
a = gets.chomp.to_i

if a == 3
  puts "a is 3"
elsif a == 4
  puts "a is 4"
else 
  puts "a is neither 3, nor 4"
end 

# short version
if x == 3 then puts "x is 3" end 
puts "x is 3" if x == 3
puts "x is NOT 3" unless x == 3

true ? "this is true" : "this is not true" #=> "this is true"
false ? "this is true" : "this is not true " #=> "this is not true"

def caps(string)
  if string.length > 10
    string.upcase 
  else 
    string
  end 
end

puts "Please enter a number between 0 and 100"
number = gets.chomp.to_i 

if (number < 0)
  puts "You can't enter a negative number!"
elsif (number <= 50)
  puts "#{number} is between 0 and 50"
elsif (number <= 100)
  puts "#{number} is between 51 and 100"
else 
  puts "#{number} is above 100"
end
