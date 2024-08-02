# Incase you want to use the result of the enumerable thruout the program, You could use a local varible 
frds = ['kim', 'juan', 'hugh', 'uman'] 

invited_frds = frds.select { |friend| friend != 'hugh' }

puts invited_frds

# OR If not in a local variable, then use a definition for
friends1 = ['onen', 'opio', 'lien', 'jack']

def invited_frds(friends1)
  friends1.select { |friend| friend != 'jack' }
end

puts invited_frds(friends1)

# SAMPLES
arr = ['chicken', 'beef', 'pork', 'fish', 'lamb']
arr.each_with_index do |item, index|
  puts "#{item}" if index%2 == 0
end

#What if I want to keep only the even numbers that are in an array? The traditional way would be to build some sort of loop that goes through the array, checks whether each element is even, and starts populating a temporary array that we will return at the end. It might look something like:
my_array = [1,2,3,4,5,6,7,8,100]
class Array
  def keep_evens
    res = []
    for num in self
      res << num if num % 2 == 0
    end
    return res
  end
end

puts my_array.keep_evens
puts my_array

# To simplify everything you can use the select method, shorter and more readable
my_array = [1,2,3,4,5,6,7,8,100]
output = my_array.select { |num| num % 2 == 0 }
puts output
