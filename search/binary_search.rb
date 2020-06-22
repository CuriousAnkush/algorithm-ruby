# input_array  = [1,2,3,4,5]

# def binary_search(start_index, end_index, input_array, given_element)
#   center = (start_index + end_index)/2
#   if(given_element == input_array[center])
#     return center
#   end
#   if(start_index == end_index)
#     return -1
#   end
#   if(given_element < input_array[center])
#     end_index = center-1
#   else
#     start_index = center + 1
#   end
#   binary_search(start_index, end_index, input_array, given_element)
# end

#puts binary_search(0, input_array.length-1, input_array, 6)


# version 2
# When array got duplicate elements, return the left most one.
input_array  = [1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2]
@attempts = 0
def binary_search_modified(start_index, end_index, input_array, given_element)
  @attempts = @attempts + 1
  center = (start_index + end_index)/2
  if(given_element == input_array[center]  and input_array[center-1]!=input_array[center])
    return center
  end

  if(start_index == end_index)
    return -1
  end
  if(given_element <= input_array[center])
    end_index = center-1
  else
    start_index = center + 1
  end
  binary_search_modified(start_index, end_index, input_array, given_element)
end

puts binary_search_modified(0, input_array.length-1, input_array, 2)
puts @attempts
