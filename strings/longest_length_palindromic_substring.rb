require 'byebug'
string = "geeksmkeekm"

table = Array.new(string.length){Array.new(string.length)}
#All one character strings are palindrom

(0...string.length).each do |index|
  matrix = table[index]
  matrix.insert(index,true)
end

def find_max_lp_substring(table, string)
  #fill all two length substrings
  start = 0
  max_length = 0
  string.chars.each_with_index  do |element,index|
    next unless string[index] == string[index + 1]
    start = index
    max_length = 2
    matrix = table[index]
    matrix.insert(index+1, true)
  end
  (2..string.length).each do |width|
    (0...(string.length-width)).each do |inner_index|
      if(string[inner_index] == string[inner_index + width] && table[inner_index+1][inner_index + width-1])
        table[inner_index][inner_index + width] = true
        if(max_length < width)
          max_length = width + 1
          start=inner_index
        end
      end
    end
  end
  [start, max_length]
end
puts find_max_lp_substring(table,string)
