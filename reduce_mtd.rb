# Fast using EACH
my_number = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
sum = 0

my_number.each { |num| sum += num }

puts sum # => 55

# OR using each with do...end
my_number = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
sum = 0
my_number.each do |num|
  sum += num
end

puts sum # => 55

# Using REDUCE METHOD
# The reduce method is used to reduce all the elements of an array into a single value.
# The reduce method takes a block with two arguments, an accumulator and the current element.
# The accumulator is the result of the block's calculation and is remembered between each iteration.
# The current element is the current element of the array.
# The reduce method is also known as inject.
# The reduce method is a destructive method, it changes the original array.

my_number = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
sum = my_number.reduce { |acc, cur_num| acc + cur_num }

puts sum # => 55

# OR
my_number = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
sum = my_number.reduce(100) { |acc, cur_num| acc + cur_num }

puts sum # => 155

# ANOTHER EXAMPLE
votes = ["Bob's Dirty Burger Shack", "St. Mark's Bistro", "Bob's Dirty Burger Shack"]

output = votes.reduce(Hash.new(0)) do |result, vote|
  result[vote] += 1
  result
end

puts output
puts votes
#=> {"Bob's Dirty Burger Shack"=>2, "St. Mark's Bistro"=>1}

# What if we want to do something that keeps track of the result as we iterate? Like, say, summing up the elements of an array?
# For that we need to use #inject (aka #reduce)
people = ['Alice', 'Bob', 'Charlie', 'David', 'Eve']
puts people.reduce('') { |result, person| result + person} # => AliceBobCharlieDavidEve

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17]
puts array.inject(0) { |result, num| result + num } # => 153

arr = [1, 2, 3, 4, 5]
output = arr.inject(0) do |result, num|
  result + num
end

puts output # => 15