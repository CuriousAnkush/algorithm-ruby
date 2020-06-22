require 'byebug'
a = %w(1 2 3 3 4 5 6)
array2 = %w(3 5)
intersection = []
i = 0
j = 0
while(i < a.length and j < b.length)
  if(a[i] == b[j])
    intersection.push(a[i])
    i = i+1
    j = j + 1
    next
  end
  if (a[i] < b[j])
    i = i + 1
  else
    j = j + 1
  end
end

puts intersection.inspect
