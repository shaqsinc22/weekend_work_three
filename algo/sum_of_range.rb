# Complete the method called sum_of_range, which will accept an array containing
# two numbers, and return the sum of all of the whole numbers within the range of those
# numbers, inclusive.

def sum_of_range(array)
  first_number = array[0]
  last_number = array.last
  if first_number < last_number
    new_array = (first_number..last_number).to_a    
  elsif first_number > last_number
    new_array = (last_number..first_number).to_a
  end

  sum = 0
  new_array.sort.each do |number|
    sum += number
  end
  return sum
end

# Driver code - don't touch anything below this line.
puts "TESTING sum_of_range..."
puts

result = sum_of_range([1, 4])

puts "Your method returned:"
puts result
puts

if result == 10
  puts "PASS!"
else
  puts "F"
end

result = sum_of_range([4, 1])

puts "Your method returned:"
puts result
puts

if result == 10
  puts "PASS!"
else
  puts "F"
end