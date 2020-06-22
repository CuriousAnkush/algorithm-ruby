input = 16
def sqrt(number)
  return 1 if number == 0
  return 1 if number ==1 or number == 3
  low = 1
  high = number
  while(low < high-1)
    middle = (low + high)/2
    return middle if middle * middle == number
    if (middle * middle > number)
      high = middle
    else
      low = middle
    end
  end
  high * high < number ? high : low
end

puts sqrt(144)