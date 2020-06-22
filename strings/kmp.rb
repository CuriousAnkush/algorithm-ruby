

def find_lps()
  lps = []
  lps[0] = 0
  inner_index = 0
  outer_index = 1

  while(outer_index < @pattern.length)
    if @pattern[outer_index] == @pattern[inner_index]
      lps[outer_index] = inner_index + 1
      inner_index = inner_index + 1
      outer_index = outer_index + 1
    elsif inner_index == 0
      lps[outer_index] = 0
      outer_index = outer_index + 1
    else
      inner_index = lps[inner_index-1]
    end
  end
  lps
end

@pattern  = 'abcdabcy'
text  = 'adsasasasasasabcdabcysasAxasasas'
@lps = find_lps

iterator = 0
iterator_pattern = 0

while(iterator <= text.length)
  if (iterator_pattern == @pattern.length)
    puts "Match found at : #{iterator-iterator_pattern}"
    exit
  end

  if text[iterator] == @pattern[iterator_pattern]
    iterator = iterator + 1
    iterator_pattern = iterator_pattern + 1
    next
  end

  if (iterator <= text.length)
    if (iterator_pattern!=0)
      iterator_pattern = @lps[iterator_pattern]
    else
      iterator = iterator+1
    end
  end
end