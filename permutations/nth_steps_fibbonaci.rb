no_of_steps = 10
@memoization = Array.new(no_of_steps+1)
@memoization[1] = 1
@memoization[2] = 2


def count_ways(steps)
  return @memoization[steps] if @memoization[steps]
  @memoization[steps] = count_ways(steps-1) + count_ways(steps-2)
end

puts count_ways(no_of_steps)
