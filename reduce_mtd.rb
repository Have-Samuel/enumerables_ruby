# Fast using EACH
my_number = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
sum = 0

my_number.each { |num| sum += num }

puts sum # => 55

# OR using each with do...end
my_number.each do |num|
  sum += num
end

puts sum # => 55