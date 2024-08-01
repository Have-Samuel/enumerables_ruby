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

names.each { |name| puts name.upcase }

puts names
