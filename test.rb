frds = ['Alice', 'Bob', 'Charlie', 'David', 'Eve ---']
invite_frds = []
for friend in frds
  if friend != 'David'
    invite_frds.push(friend)
  end
end
puts invite_frds

# Using select and reject methods
frds = ['Alice', 'Bob', 'Charlie', 'David', 'Eve']
frds.select { |friend| friend != 'David' }
frds.reject { |friend| friend == 'David' }
puts frds

# EACH METHOD
fruits = ['apple', 'banana', 'cherry', 'date', 'elderberry']
fruits.each { |fruit| puts "I Love all these #{fruit} fruits" }

# OR
fruits.each do |fruit|
  print "I Love all these #{fruit} fruits"
end

# THe Do...end block is used when you have multiple lines of code to execute, and it's the recomended way to use the each method, other than the curly braces {....}.
arr = [1, 2, 3, 4, 5]
arr.each do |num|
  num *= 3
  puts "That's the new digit: #{num}"
end

# Each with Hashes
nums = {'one': 1, 'two': 2}

nums.each { |key, value| puts "#{key} is #{value}" }

# OR 
nums.each do |key, value|
  puts "#{key} is #{value}"
end

# Each Method is non-destructive, it doesn't change the original array or hash
names = ['hugh', 'larry', 'moe', 'curly', 'shemp', 'joe']

caps = names.each { |name| name.upcase }

puts names
puts caps
#=> ['hugh', 'larry', 'moe', 'curly', 'shemp', 'joe']

# Each with Index, is non-destructive as well
schools = ['Harvard', 'MIT', 'Stanford', 'Yale', 'Princeton']

schools.each_with_index do |school, index|
  puts "#{school}" if index.odd?
end

# MAP METHOD
# The map method is used to create a new array with the results of running a block once for every element in the array.
# Modify the Each's examples of making the names all caps
names = ['hugh', 'larry', 'moe', 'curly', 'shemp', 'joe']
new_names = []
names.map { |name| new_names.push(name.upcase)}
puts "These are the new names in caps: #{new_names}"
# p "These are the new names in caps: #{new_names}"
# print "These are the new names in caps: #{new_names}"

# OR
names = ['hugh', 'larry', 'moe', 'curly', 'shemp', 'joe','jim']
caps2 = names.map { |name| name.upcase }


puts caps2
puts names
# Map! is destructive, it changes the original array

# Map method with gsub method, to replace 'small' with 'big' in the classes array. And it's non-destructive
classes = ['small class1', 'small class2', 'small class3', 'small class4', 'small class5']

newer = classes.map { |item| item.gsub('small', 'big') }

puts newer
puts classes

# Map method with numbers, It's non-destructive
numbers = [1200, 1300, 1400, 1500, 1600]

salary_deduct = numbers.map { |num| num - 750 }

puts salary_deduct
puts numbers

# Still using MAP method
identity = ['Alice', 'Bob', 'Charlie', 'David', 'Eve']

identity.map do |name|
  puts name.upcase
end

# OR
identity.map { |name| puts name.upcase }

puts identity

# Double the numbers in the array
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
output = numbers.map { |num| num * 2 }

puts output
# Convert the string numbers to integers
int = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10']

res = int.map { |num| num.to_i }

puts res
p res
p int

# Convert the hash values to symbols: Fast convert the string values to symbols
#                                   : second, convert the values to symbols
h = { mother: 'Susan', father: 'John', sister: 'Jane', brother: 'Joe' }
show = h.map { |k, v| [k, v.to_sym] }.to_h # Convert the values to symbols
# to_sym => Convert the string to symbols

puts show
p h
p show

