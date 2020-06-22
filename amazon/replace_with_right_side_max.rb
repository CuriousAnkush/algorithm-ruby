input_array = [16,17,4,3,5,2]
max = -1
(0...input_array.length).each do |index|
  element = input_array[input_array.length-1-index]
  input_array[input_array.length-1-index] = max
  if (element > max)
    max = element
  end
end

print input_array