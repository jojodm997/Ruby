age = 18 + 4 #=> 22

# Override the value of age
age = 17 
#=> 17 
age = 18 
#=> 18
age += 5 #=> 23
age -= 7 #=> 16
age *= 2 #=> 36 
age /= 4 #=> 8


# bad
a = 19
string = "john"

# good
age = 18
name = "john"
can_swin = false

CONSTANT = 'THIS WAS CONSTANT VARIABLE'
$var = 'global variable' # Don't use this
@instance
@@instances = 0

name = gets.chomp + ' WELCOME HOME' 
Bob #=> "Bob WELCOME HOME"

