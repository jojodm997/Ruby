# Integer
17 / 5 #=>3, not 3.4

# Floats
17 / 5.0 #=> 3.4

# Convert an integer to a float:
13.to_f #=> 13.0

# To convert a float to an integer: 
13.0.to_i #=> 13
13.9.to_i #=> 13

6.even? #=> true
7.even? #=> false

6.odd? #=> false
7.odd? #=> true

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

:my_symbol #symbol 

"string" == "string" #=> true

"string".object_id == "string".object_id #=> false

:symbol.object_id == :symbol.object_id #=> true

'Hello, world!'          # string literal
375                      # integer literal
3.141528                 # float literal
true                     # boolean literal
{ 'a' => 1, 'b' => 2 }   # hash literal
[ 1, 2, 3 ]              # array literal
:sym                     # symbol literal
nil                      # nil literal

1 + 1 #=> 2

2 - 1 #=> 1

2 * 2 #=> 4

10 / 5 #=> 2

2 ** 3 #=> 8
3 ** 4 #=> 81

8 % 2 #=> 0
10 % 4 #=> 2 

4 == 4 #=> true
5 == 4 #=> false

"foo" == "bar" #=> false
"foo" == "foo" #=> true

'4' == 4 #=> false (different types)

'12'.to_i #=> 12
 12.to_s #=> '12'

-300.abs #=> 300 
300.abs #=> 300
