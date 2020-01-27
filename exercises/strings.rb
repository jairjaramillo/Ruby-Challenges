# frozen_string_literal: true

require 'json'
require 'stringio'

# Complete the repeatedString function below.
def repeatedString(s, n) # rubocop:disable Naming/MethodName, Naming/UncommunicativeMethodParamName
  remain = []

  (n % s.size).times { |i| remain.push s[i] }

  (s.count('a') * (n / s.size)) + remain.count('a')
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
