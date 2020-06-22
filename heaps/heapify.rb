require 'byebug'
given_array = [67, 23, 41,56,73, 89, 9, 20, 31, 55, 98]
heap_size = 6

@no_of_internal_nodes = 3
def array_to_heap(given_array, heap_size)
  (0..2).each do |index|
    heapify(given_array, 2-index, heap_size)
  end
end


def heapify(given_array, index, heap_size)
  left_child  = 2*index + 1
  right_child  = left_child + 1
  smaller = index
  if(left_child < heap_size and given_array[left_child] < given_array[index])
    smaller = left_child
  end
  if(right_child < heap_size and given_array[right_child] < given_array[smaller])
    smaller = right_child
  end
  if (smaller != index)
    tmp = given_array[index]
    given_array[index] = given_array[smaller]
    given_array[smaller] = tmp
    heapify(given_array, smaller, heap_size)
  end
end


def find_kth_small(given_array, heap_size, k)
  return if k > heap_size
  kth_small = 0
  k.times do
    kth_small = given_array[0]
    given_array[0] = given_array[heap_size-1]
    heap_size = heap_size - 1
    heapify(given_array, 0,heap_size)
  end
  return kth_small
end

array_to_heap(given_array, heap_size)
puts given_array.inspect
puts find_kth_small(given_array, heap_size, 6)