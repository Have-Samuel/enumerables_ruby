# COLLECT METHOD / MAP METHOD
# The collect method is used to apply a block to each element of an array and returns a new array containing the results.
array = [1,2,3,4,5]

show = array.collect { |num| num**2 }

puts show
puts array # It non-destructive, the original array is not changed