# frozen_string_literal: true

# Balanced Brackets
# Original challenge: https://repl.it/student/submissions/8756754
# By Jair Jaramillo:  https://github.com/jairjy

# Creates a Stack linked list
def balanced_brackets?(string)
  stack = []
  string = string.tr('a-zA-Z', '')
  string = string.split('')
  string.size.times do |x|
    if string[x] == '(' || string[x] == '[' || string[x] == '{'
      stack.push(string[x])
    else
      return false if stack.empty?

      top = stack.pop
      return false if top == '(' && string[x] != ')'
      return false if top == '{' && string[x] != '}'
      return false if top == '[' && string[x] != ']'
    end
  end
  return true if stack.empty?

  false
end

puts balanced_brackets?('(hello)[world]')
# => true

puts balanced_brackets?('([)]')
# => false

puts balanced_brackets?('[({}{}{})([])]')
# => true
