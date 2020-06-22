require 'byebug'

input = 'AGGTAB'
text = 'GXTXAYB'
#Largest common subsequence among two strings recursive


@input_char_array = input.chars.to_a
@text_char_array = text.chars.to_a
@memoization = Array.new(@input_char_array.length+1){Array.new(@text_char_array.length+1)}
def find_lcs(input_index, text_char_index)
  if(input_index > @input_char_array.length-1 or text_char_index > @text_char_array.length-1)
    array = @memoization[input_index]
    array[text_char_index] = 0
  end
  return @memoization[input_index][text_char_index] if @memoization[input_index][text_char_index]
  if(@input_char_array[input_index] == @text_char_array[text_char_index])
    @memoization[input_index][text_char_index] =  1 + find_lcs(input_index+1, text_char_index+1)
  else
    @memoization[input_index][text_char_index] = [find_lcs(input_index+1, text_char_index),find_lcs(input_index, text_char_index+1)].max
  end
end

puts find_lcs(0,0)
puts @memoization.inspect