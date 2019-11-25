# frozen_string_literal: true

# Original challenge: https://repl.it/student/submissions/8599222
# By Jair Jaramillo:  https://github.com/jairjy

# Start with your code from LinkedList challenge.

# Creates a Node object containing a number and a slot for another node
class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

# Creates a Stack linked list
class Stack
  def empty?
    @node.nil?
  end

  def push(number)
    if empty?
      @node = Node.new(number)
    else
      temp = Node.new(@node.value, @node.next_node)
      @node.value = number
      @node.next_node = temp
    end
  end

  def pop
    val = @node.value
    @node = @node.next_node
    val
  end
end

stack = Stack.new
stack.push(3)
stack.push(5)
puts stack.pop
# => 5

stack.push(2)
stack.push(7)
puts stack.pop
# => 7

puts stack.pop
# => 2

puts stack.pop
# => 3
