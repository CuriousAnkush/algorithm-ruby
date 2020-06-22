array_to_heap = [0, 1, 0, 1, 0, 0, 1, 1, 1, 1]

left_index = 0
right_index = array_to_heap.length - 1

# while(left_index < right_index)
#  while(array_to_heap[left_index] == 0 and left_index < right_index)
#    left_index = left_index + 1
#  end
#   while(array_to_heap[right_index] == 1 && right_index > left_index)
#     right_index = right_index - 1
#   end
#   tmp = array_to_heap[left_index]
#   array_to_heap[left_index] = array_to_heap[right_index]
#   array_to_heap[right_index] = tmp
# end

while(left_index < right_index)
  if array_to_heap[left_index] == 0
    left_index = left_index + 1

  elsif(array_to_heap[right_index] == 1)
    right_index = right_index -1
  else
    array_to_heap[left_index] = 0
    array_to_heap[right_index] = 1
    left_index = left_index + 1
    right_index = right_index - 1
  end
end

puts array_to_heap.inspect
