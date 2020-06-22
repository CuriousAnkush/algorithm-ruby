n = 10
@coins = [2,5,3, 6]
@memoization = {}

#Count c whose aggregate sums to given n
# def count_coins(n, c)
#   if(@memoization[n])
#     return @memoization[n]
#   end
#   if (n == 0)
#     return 1
#   end
#   if (n <0)
#     return 0
#   end
#   sum = c.inject(0) do |sum,coin|
#     @memoization[n-coin] = count_coins(n-coin, c)
#     sum = sum + @memoization[n-coin]
#   end
#   return sum
# end

def count_coins(n, c, i=0)
  if (@memoization[[n,i]])
    return @memoization[[n,i]]
  end
  if(n < 0 || i >= c.length)
    return 0
  end
  if(n ==  0)
    return 1
  end
  @memoization[[n,i]] = count_coins(n-c[i], c, i) + count_coins(n, c, i + 1)
  @memoization[[n, i]]
end

count_coins(10, @coins)
puts @memoization[[10,0]]
