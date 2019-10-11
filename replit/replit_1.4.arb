# frozen_string_literal: true

# Original challenge: https://repl.it/student/submissions/8627165
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

# Creates a Queue using a Linked List
class Queue
  def empty?
    @node.nil?
  end

  def add(number)
    if empty?
      @node = Node.new(number)
      @end = @node
    else
      @end.next_node = Node.new(number)
      @end = @end.next_node
    end
  end

  def remove
    return -1 if empty?

    val = @node.value
    @node = @node.next_node
    val
  end
end

queue = Queue.new

queue.add(3)
queue.add(5)
puts queue.remove
# => 3

queue.add(2)
queue.add(7)
puts queue.remove
# => 5

puts queue.remove
# => 2

puts queue.remove
# => 7

puts queue.remove
# => -1
