## ---------------------------
## -- Basic types
## ---------------------------

# There are numbers
3    # integer
0x1F # integer
3.0  # float

# Atoms, that are literals, a constant with name. They start with `:`.
:hello # atom

# Tuples that are stored contiguously in memory.
{1,2,3} # tuple

# We can access a tuple element with the `elem` function:
elem({1, 2, 3}, 0) #=> 1

# Lists that are implemented as linked lists.
[1,2,3] # list

# We can access the head and tail of a list as follows:
[head | tail] = [1,2,3]
head #=> 1
tail #=> [2,3]

[a, b, c] = [1, 2, 3]
a #=> 1
b #=> 2
c #=> 3

# A pattern match will error when the sides don't match, in this example
# the tuples have different sizes.
# {a, b, c} = {1, 2} #=> ** (MatchError) no match of right hand side value: {1,2}

# There are also binaries
<<1,2,3>> # binary

# Strings and char lists
"hello" # string
'hello' # char list

# Multi-line strings
"""
I'm a multi-line
string.
"""
#=> "I'm a multi-line\nstring.\n"

# Strings are all encoded in UTF-8:
"héllò" #=> "héllò"

# Strings are really just binaries, and char lists are just lists.
<<?a, ?b, ?c>> #=> "abc"
[?a, ?b, ?c]   #=> 'abc'

# `?a` in elixir returns the ASCII integer for the letter `a`
?a #=> 97

# To concatenate lists use `++`, for binaries use `<>`
[1,2,3] ++ [4,5]     #=> [1,2,3,4,5]
'hello ' ++ 'world'  #=> 'hello world'

<<1,2,3>> <> <<4,5>> #=> <<1,2,3,4,5>>
"hello " <> "world"  #=> "hello world"

# Ranges are represented as `start..end` (both inclusive)
1..10 #=> 1..10
lower..upper = 1..10 # Can use pattern matching on ranges as well
[lower, upper] #=> [1, 10]

# Maps are key-value pairs
genders = %{"david" => "male", "gillian" => "female"}
genders["david"] #=> "male"

# Maps with atom keys can be used like this
genders = %{david: "male", gillian: "female"}
genders.gillian #=> "female"