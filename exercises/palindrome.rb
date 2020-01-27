# frozen_string_literal: true

def p?(string)
  return true if string == string.reverse

  false
end

def new_array(array, index)
  n_array = []
  array.size.times do |i|
    n_array.push(array[i]) unless i == index
  end
  n_array
end

def palindrome(s)
  return -1 if p?(s)

  s.size.times do |i|
    return i if p?(new_array(s, i))
  end

  -1
end
