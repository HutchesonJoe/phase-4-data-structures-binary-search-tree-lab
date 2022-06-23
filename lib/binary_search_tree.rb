require_relative './node'
require "pry"

class BinarySearchTree
  attr_accessor :root, :left, :right

  def initialize(root = nil, left = nil, right = nil)
    @root = root
    @left = left
    @right = right
  end

  def search(x)
    result = []
    nodes_to_visit = [@root]
    # binding.pry
    while nodes_to_visit.length > 0
      node = nodes_to_visit.shift
    #  binding.pry
      if node && node.value == x
        return node
      elsif node && node.left.value == x
        return node.left
      elsif node && node.right.value == x
        return node.right
      end
      result.push(node)
    end
    return
    
  end

  def insert(value)
    # your code here
  end

end 
