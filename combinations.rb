candidates = [2,5,2,1,2]
target = 5

def combination_sum2(candidates, target)
  length_of_combinations = candidates.length ** 2
  total_combinations = 0
  (0...length_of_combinations).each do |number|
    sum = 0
    (0...candidates.length).each do |bit_number|
      is_bit_set = !(number & (1 << bit_number)).zero?
      next unless is_bit_set
      sum = sum + candidates[-bit_number-1]
    end
    if(sum == target)
      puts number.to_s(2)
      total_combinations = total_combinations + 1
    end
  end
  total_combinations
end

puts combination_sum2(candidates, target)
