require_relative "static-array"

attr_accessor :length


def initialize()
  @store = StaticArray.new(DEFAULT_LENGTH)
  @capacity = DEFAULT_LENGTH
  @length = 0
end

def[](index)
  check_index(index)
end


def[]=(index,value)
  check_index(index)
  @store[index] = value
end

def pop
  check_index
  to_remove = @store[length-1]
  @store[length-1] = nil
  @length -= 1
  to_remove
end


def push(val)
  resize! if at_capacity?
  self[length] = val
  @length += 1
end

def shift
  shifted = @store[0]
  @store[0] = nil
  shifted
end


def unshift(val)
end


private
  DEFAULT_LENGTH = 10
  BUFFER_RATIO = 2
  attr_accessor :capacity, :store
  attr_writer :length

  def at_capacity?
  end


  def check_index(index = 0)
    raise "index isn't in array" if index > length -1
  end


  def resize!
  end
