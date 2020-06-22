def look_and_say(nth_term)
  return '1' if nth_term == 1
  return '11' if nth_term == 2
  next_term = '11'
  while(nth_term-2 > 0)
    next_term = next_look_and_say(next_term)
    nth_term = nth_term - 1
  end
  return next_term
end

def next_look_and_say(term)
  string = ""
  current_number = term[0]
  current_count = 1
  current_index = 0
  while(current_index < term.length - 1)
    if(term[current_index + 1] == term[current_index])
      current_count = current_count + 1
    else
      string << "#{current_count}#{current_number}"
      current_number = term[current_index + 1]
      current_count = 1
    end
    current_index = current_index + 1
  end
  string << "#{current_count}#{current_number}"
  string
end

puts look_and_say(50)
