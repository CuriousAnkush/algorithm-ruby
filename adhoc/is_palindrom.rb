a = ""

def isPalindrome(a)
  start_index = 0
  while(start_index <= (a.length - start_index - 1))
    next unless a[start_index] =~ /[[:alnum:]]/
    return 0 if a[start_index].downcase != a[a.length - start_index - 1].downcase
    start_index = start_index + 1
  end
  1
end
