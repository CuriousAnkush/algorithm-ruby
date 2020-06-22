require 'byebug'
given_array = [-2,-3,4,-1,-2,1,5,-3]

# def largest_sum_contiguous_subarray given_array
#   max_sum = given_array[0]
#   start_index = 0
#   end_index = 0
#   (0...given_array.length-1).each do |index|
#     sum_so_far = given_array[index]
#     (index+1...given_array.length).each do |inner_index|
#       sum_so_far = sum_so_far + given_array[inner_index]
#       next if sum_so_far < max_sum
#       max_sum = sum_so_far
#       start_index = index
#       end_index = inner_index
#     end
#   end
#   return [max_sum, start_index, end_index]
# end
#
# puts largest_sum_contiguous_subarray given_array


#Kadane's algorithm
#Only keep track of the positive sum contiguous subarrays
# def kadanes given_array
#   max_sum = 0
#   max_sum_so_far = 0
#   start_index = 0
#   end_index = 0
#   (0...given_array.length).each do |index|
#     max_sum_so_far = max_sum_so_far + given_array[index]
#     if max_sum_so_far < 0
#       max_sum_so_far = 0
#       start_index = index
#       end_index = index
#     end
#     if max_sum_so_far > max_sum
#       max_sum = max_sum_so_far
#       end_index = index
#     end
#   end
#   return max_sum, start_index, end_index
# end
#
# puts kadanes given_array

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
#
#
-4 + 2 +1
array = [-1, 2, 1, -4]
def three_sum_closest(nums, target)
  hash = {}
  nums.sort!
  nums[0..-3].each_with_index do |element, index|
    element = nums[index]
    start_index = index + 1
    last_index = nums.length - 1
    abs_diff = (target - nums[start_index] - nums[last_index] - element).abs
    if hash.keys.empty? || hash.keys.first > abs_diff
      hash.clear
      hash[abs_diff] = nums[start_index] + nums[last_index] + element
    end
    while(start_index < last_index)
      sum = nums[start_index] + nums[last_index] + element
      if(sum == target)
        return sum
      elsif(sum < target)
        start_index += 1
      else
        last_index -= 1
      end
      abs_diff = (target - sum).abs
      if(hash.keys.first > abs_diff)
        hash.clear
        hash[abs_diff] = sum
      end
    end
  end
  hash.values.first
end

puts three_sum_closest(array, 1)