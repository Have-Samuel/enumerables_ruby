friends = ['john', 'jane', 'joe', 'james',]

caps1 = friends.each { |friend| friend.capitalize }
puts caps1 # => Why doesn't the EACH method return the names in caps? Its 

caps2 = friends.map { |friend| friend.upcase }

puts caps2 # Why does the MAP method return caps? 
puts friends
# To change the original array, use the map! method
caps3 = friends.map! { |friend| friend.upcase }

puts caps3
puts friends

# Bang methods are not recommended, they are destructive and can't be undone.
# The map method is non-destructive, it doesn't change the original array.