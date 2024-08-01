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
