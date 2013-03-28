require 'pry'
require 'pry-debugger'
require 'pry-stack_explorer'

def sum(a, b)
  a + b
end

def square(a)
  a ** 2
end

def cube(a)
  square(a) * a
end

def quad(a)
  cube(a) * a
end

def factorial(x)
  if x == 1
    1
  else
    x * factorial(x - 1)
  end
end

def fib(x)
  if x == 2 || x == 1
    1
  elsif x == 0
    0
  else
    fib(x - 2) + fib(x - 1)
  end
end

class Node
  attr_accessor :data, :prv, :nxt
  def initialize(data)
    self.data = data
    self.prv = self.nxt = nil
  end
end

binding.pry