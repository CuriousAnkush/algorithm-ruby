require 'byebug'
# Keep track of the length of maximum increasing subsequence at index i in dp[]. For index i + 1, compare it with all preceding elements and keep tracking the max length of subsequence ending at index i + 1. In order to do so, while going back in the array at index i+1, if any element at index j is smaller, increase the value at index j by 1, and it could be the max length of susequence at index i+1

array = [10, 22, 9, 33, 21, 50, 41, 60]
dp = Array.new(array.length){1}

array[1..-1].each_with_index do |element, index|
  index = index + 1
  max_subsequence_length = 1
  (0...index).each do |inner_index|
    if (element > array[inner_index])
      temp_length = dp[inner_index] + 1
    end
    max_subsequence_length = [temp_length.to_i, max_subsequence_length, dp[inner_index]].max
  end
  dp[index] = [max_subsequence_length,dp.max].max
end

puts dp.max