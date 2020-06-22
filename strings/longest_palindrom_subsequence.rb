require 'byebug'
sequence = "BBABCBCAB"

# sequence = "abaacbs"
@memoization = Array.new(sequence.length){Array.new(sequence.length)}
def find_lps(char_array, start_index, end_index)
  return @memoization[start_index][end_index] if @memoization[start_index][end_index]
  #Very important base condition or else start_index and end_index crosses each other
  if (char_array[start_index] == char_array[end_index] && start_index + 1 == end_index)
    return 2;
  end
  if  (start_index  == end_index)
    @memoization[start_index][end_index] = 1
    return @memoization[start_index][end_index]
  end
  if(char_array[start_index] == char_array[end_index])
    @memoization[start_index][end_index] =  2 + find_lps(char_array, start_index + 1, end_index-1)
  else
    @memoization[start_index][end_index] =  [find_lps(char_array, start_index+1,end_index),
            find_lps(char_array, start_index,end_index-1)].max
  end
end

find_lps(sequence.chars.to_a, 0, sequence.length-1)
puts @memoization.inspect

