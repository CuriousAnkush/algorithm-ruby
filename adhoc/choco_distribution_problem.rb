# Given an array of n integers where each value represents number of chocolates in a packet. Each packet can have variable number of chocolates. There are m students, the task is to distribute chocolate packets such that:
#
#                                                                                                                                       Each student gets one packet.
#   The difference between the number of chocolates in packet with maximum chocolates and packet with minimum chocolates given to the students is minimum.

# Intepretation -> Identify subsequence of size k with minimum difference between smallest and largest element
# Solutions 1 -> Identify all subsequnece in 2^n time.
# Solution 2 -> Sort the array and find substrings with desired criteria above.

# arr = [7, 3, 2, 4, 9, 12, 56]
#
# arr2 = [3, 4, 1, 9, 56, 7, 9, 12]
#
# arr3 = [12, 4, 7, 9, 2, 23, 25, 41,
#         30, 40, 28, 42, 30, 44, 48,
#         43, 50]
#
# def find_distribution(arr, k)
#   arr = arr.sort
#   min_difference = 100
#   (arr.length - k + 1).times do |index|
#     difference = arr[index+k-1] - arr[index]
#     if(difference < min_difference)
#       min_difference = difference
#     end
#   end
#   min_difference
# end
#
# puts find_distribution(arr, 3)
# puts find_distribution(arr2, 5)
# puts find_distribution(arr3, 7)


#  -> 1,1,0,0,0,0,1,1,1
# 1,1,1,1,1,1
# 0,0,0,0,0
# 1,0,0,0
# 0,1,0,1,1
#
# 111110
#
#
# 110011
arra = [1,1,0,0,1,1]
i= 0
j = arra.length-1
while(i < j)
  if arra[i] == 0
    i = i + 1

    elsif(arra[j] == 1)
    j = j -1
  else
    arra[i] = 0
    arra[j] = 1
    i = i + 1
    j = j - 1
  end
end

puts arra.inspect
