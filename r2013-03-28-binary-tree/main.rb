require 'pry'
require 'pry-debugger'
require 'pry-stack_explorer'

# d = data, p = previous, n = next

class Node
  attr_accessor :d, :p, :n
  def initialize(data)
    self.d = data
    self.p = self.n = nil
  end
  def to_s
    nxt = self.n.nil? ? 'empty' : self.n.d
    prv = self.p.nil? ? 'empty' : self.p.d
    "#{prv} <- #{self.d} -> #{nxt}"
  end
end

class Tree
  attr_accessor :root, :nodes
  def insert(name, at_node=self.root)
    if at_node.nil?
      self.root = Node.new(name)
    else
      node = Node.new(name)
      if node.d < at_node.d
        if at_node.p.nil?
          at_node.p = node
        else
          at_node = at_node.p
          self.insert(node.d, at_node)
        end
      else
        if at_node.n.nil?
          at_node.n = node
        else
          at_node = at_node.n
          self.insert(node.d, at_node)
        end
      end
    end
  end
  def find(name, node=self.root)
    if node.nil?
      puts 'This node does not exist.'
    elsif name == node.d
      node
    elsif name < node.d
      node = node.p
      find(name, node)
    elsif name > node.d
      node = node.n
      find(name, node)
    end
  end
  def to_s
    self. nodes = []
    get_node(self.root)
    nodes.join(', ')
  end
  def get_node(node)
    get_node(node.p) if !node.p.nil?
    self.nodes << node.d
    get_node(node.n) if !node.n.nil?
  end
end


t1 = Tree.new
t1.insert('mary')
t1.insert('kelly')
t1.insert('james')
t1.insert('lucy')
t1.insert('zack')

lucy = t1.find('lucy')
puts lucy

binding.pry