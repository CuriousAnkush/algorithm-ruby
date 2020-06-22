#Quick sort pivaot procedure

# array = [2,-9,11,18,0,9,99,25]
array = [2,-9,11,18,0,9,99,25]
@given_key = 25
@index_to_swap = -1


# This also works, this is my algorithm

array.each_with_index do |element, index|
  if(element == @given_key)
    tmp = array[array.length-1]
    array[array.length-1] = element
    array[index] = tmp
  end
  if(array[index] > @given_key and @index_to_swap == -1)
    @index_to_swap = index
  end
  next if @index_to_swap == -1
  if (element < @given_key)
    tmp = array[index]
    array[index] = array[@index_to_swap]
    array[@index_to_swap] = tmp
    @index_to_swap = @index_to_swap + 1
  end
end

tmp = array[@index_to_swap]
array[@index_to_swap] = array[array.length-1]
array[array.length-1] = tmp
 puts array.inspect

# array.each_with_index do |element, index|
#   if(element == @given_key)
#     tmp = array[array.length-1]
#     array[array.length-1] = element
#     array[index] = tmp
#   end
#   if(element < @given_key)
#     @index_to_swap = @index_to_swap + 1
#     tmp = array[index]
#     array[index] = array[@index_to_swap]
#     array[@index_to_swap] = tmp
#   end
# end
# tmp = array[@index_to_swap+1]
# array[@index_to_swap+1] = array[array.length-1]
# array[array.length-1] = tmp
#
# puts array.inspect