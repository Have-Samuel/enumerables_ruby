names = ["James", "Bob", "Joe", "Mark", "Jim"]

output = names.group_by { |name| name.length }
show = names.group_by { |name| name.index('m') }
del = names.group_by { |name| name.delete('M') }

puts output
puts show
puts del