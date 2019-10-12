require 'byebug'


def hash_value(pattern)
  hash = 0;
  (0...pattern.length).each do |index|
    hash = hash + pattern[index].ord * (@d **(pattern.length-1-index))
  end
  hash
end


def rolling_hash(old_hash, old_char, new_char, pattern_length)
  new_hash = old_hash - (old_char.ord * (@d**(pattern_length-1)))
  new_hash = new_hash * @d
  new_hash = new_hash + new_char.ord
  new_hash
end

def match_text(pattern1, pattern2)
  return false if pattern1.length != pattern2.length
  index = 0
  while (index < pattern1.length && pattern1 == pattern2)
    index = index + 1
  end
  return true if index == pattern1.length
  return false
end

input = "aacafd knafanndfaldnalndamldaldmandadam.da.damdaacb"
pattern = 'aacb'
@input = input
@pattern  = pattern

@d = 10


@hash_value = hash_value(pattern)
@input_text_hash_value = hash_value(input[0...pattern.length])

(1..input.length-pattern.length+1).each do |index|
  if @hash_value == @input_text_hash_value
    puts index-1 if match_text(pattern, input[index-1...pattern.length])
  else
    @input_text_hash_value = rolling_hash(@input_text_hash_value, input[index-1], input[index-1+pattern.length],pattern.length)
  end
end

