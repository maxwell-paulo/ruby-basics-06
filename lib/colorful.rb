def colorful?(number)
  # TODO: return true if the number is colorful, false otherwise
  arr = []
second_arr = []

# Push each number character in the array arr
for char in number.to_s.each_char
  arr.push(char.to_i)
end

# Multiple two sequential numbers and push in the array second_arr
arr.each_with_index do |c, i|
  if i < arr.length - 1
    second_arr.push(c * arr[i + 1])
  end
end

# Multiple all numbers and keep it in the variable count
count = arr[0]

arr.each_with_index do |c, i|
  if i < arr.length && i > 0
    count = count * c
  end
end

# Push all sencod_arr numbers in the array arr
for n in second_arr do
  arr.push(n)
end

# Push the variable count in the array arr
if number.to_s.length > 2
arr.push(count)
end

# Check if there is some repeated number in the array arr
result = true
arr.each_with_index do |c, i|
  arr.each_with_index do |current, index|
    if i != index && c == current
      result = false
    end
  end
end

# Check if the number has only one character
if number.to_s.length == 1
  result = true
end

return result
end


puts colorful?(263)  # Should return "true"
puts colorful?(326)  # Should return "false"
puts colorful?(263)  # Should return "true"
puts colorful?(100)  # Should return "false"
puts colorful?(2630) # Should return "false"
puts colorful?(234) #  Should return "true"
puts colorful?(2361) # Should return "false"
puts colorful?(123)  # Should return "false"
puts colorful?(0) # Should return "true"
puts colorful?(1) # Should return "true"
puts colorful?(23) # Should return "true"
