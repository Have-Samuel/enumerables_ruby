# What is the difference between map & each?
# Each is like a more primitive version of map…
# It gives you every element so you can work with it, but it doesn’t collect the results.
# Each always returns the original, unchanged object.
# While map does the same thing, but…
# It returns a new array with the transformed elements.

# Example:
# Using each
arr = [1, 2, 3]
arr.each do |num|
  puts num * 2
end
puts arr

array1 = [1, 2, 3]
boom = array1.each { |n| n * 2 }
puts boom
puts array1

# Using map
arr1 = [1, 2]
new_arr = arr1.map do |num|
  num * 2
end
puts new_arr
puts arr1

array = [3, 4]
pop = array.map { |n| n * 2 }

puts pop
puts array

# MAP vs COLLECT
# Map and collect are the same method
# They are different names for the same thing.
# Which one to use?
# When you read open source code, you’ll see map more often than collect.
# So, it’s better to use map.


#How to Use Map With an Index
# If you need an index with your values you can use the with_index method.

# Example:
ar = %w[a, b, c]
ar.map.with_index do |char, idx| [char, idx]
    puts char  
end

puts ar

something = ar.map.with_index { |char, idx| [char, idx] }

print something


array = %w(a b c)

lop = array.map.with_index { |ch, idx| [ch, idx] }
print lop

# Ruby Map Shorthand (map &)
# You can use a shorthand version for map when you’re calling a method that doesn’t need any arguments.

top = ["11", "21", "5"].map(&:to_i)

print top

fruits = ["orange", "apple", "banana"].map(&:class)

print fruits # => [String, String, String]