# frozen_string_literal: true

require 'json'
require 'stringio'

# Complete the repeatedString function below.
def repeatedString(s, n) # rubocop:disable Naming/MethodName, Naming/UncommunicativeMethodParamName
  result = s
  counter = 0
  (n - s.size).times do
    counter = 0 if counter >= s.size
    result += s[counter]
    counter += 1
  end

  result.count('a')
end

# fptr = File.open(ENV['OUTPUT_PATH'], 'w')

# s = gets.to_s.rstrip

# n = gets.to_i

s = 'aba'
n = 10

result = repeatedString s, n

puts result

# fptr.write result
# fptr.write "\n"

# fptr.close
