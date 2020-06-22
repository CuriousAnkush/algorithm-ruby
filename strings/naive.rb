input ="bbaabbbbbaabbaabbbbbbabbbabaabbbabbabbbbababbbabbabaaababbbaabaaaba"

pattern = "babaaa"

(0..(input.length-pattern.length)).each do |index|
  inner_index = 0
  while((inner_index + index) < input.length && input[inner_index + index] == pattern[inner_index] ) do
    inner_index = inner_index + 1
  end
  puts index if inner_index == pattern.length
end
