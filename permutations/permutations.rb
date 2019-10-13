
# Find out all permutations of a given string s which are in b.

pattern = 'acba'
text = 'acbcbabaabcaaabb'


def get_all_permutations(pattern, text)
  text_array = text.chars.to_a
  (0..text.length-pattern.length+1).each do |index|
    puts index if is_permutation?(text[index..index+pattern.length-1])
  end
end

def get_characters_count(text, map = {})
  text = text.chars.to_a
  text.each do |index|
    map[text[index]] = map[text[index]].to_i + 1
  end
  map
end

@count = get_characters_count(pattern)

def is_permutation?(text)
  text_char_count = get_characters_count(text)
  return false unless text_char_count.keys.length == @count.keys.length
  @count.keys.each do |key|
    return false if @count[key]!=text_char_count[key]
  end
  true
end

get_all_permutations(pattern, text)


