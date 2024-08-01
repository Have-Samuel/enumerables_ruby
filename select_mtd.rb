# SELECT METHOD
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun', 'Keyur', 'Peter', 'Harold']

frds = []
# Fast with each method
friends.each do |friend|
  frds.push(friend) if friend != 'Arun'
end
puts frds
puts friends

unwanted = friends.select { |friend| friend != 'Arun' }

puts unwanted
puts friends

# Selection of those that will be present using HASHES
frds = {'Sharon' => 'yes', 'Leo' => 'yes', 'Leila' => 'yes', 'Brian' => 'no', 'Arun' => 'yes', 'Keyur' => 'yes', 'Peter' => 'no', 'Harold'=> 'yes'}

frds.select { |person, response| (response == 'yes') }

# OR 
frds.select do |person, response|
  
end

# puts frds