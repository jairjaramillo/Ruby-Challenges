# frozen_string_literal: true

# Sliding Maximum
# Original challenge: https://repl.it/student/submissions/8726436
# By Jair Jaramillo:  https://github.com/jairjy

def sliding_maximum(k, array)
  res = Array.new(array.size - k + 1, 0)

  (array.size - k + 1).times do |x|
    k.times do |y|
      res[x] = array[x + y] if array[x + y] > res[x]
    end
  end
  res
end

puts sliding_maximum(3, [1, 3, 5, 7, 9, 2])
# => [5, 7, 9, 9]
