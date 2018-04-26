require_relative "static-array"

attr_accessor :length


def initialize()
  @store = StaticArray.new(DEFAULT_LENGTH)
  @capacity = DEFAULT_LENGTH
  @length = 0
end

def[](index)
  check_index(index)
  @store[index]
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
  resize! if at_capacity?
  new_store = StaticArray.new(length-1)
  #make a store with shorter distance
  #no need to copy over the first element
  (1...length).each{|i| new_store[i] = self[i]}
  @length -= 1
end


def unshift(val)
  new_store = StaticArray.new(length+1)
  new_store[0] = val
  (0...length).each{|i| new_store[i+1] = self[i]}
  @store = new_store
  @length += 1
end


private
  DEFAULT_LENGTH = 10
  BUFFER_RATIO = 2
  attr_accessor :capacity, :store
  attr_writer :length

  def at_capacity?
    @length == @capacity
  end

  def check_index(index = 0)
    raise "index isn't in array" if index > length -1
  end

  def resize!
    new_store = StaticArray.new(length * BUFFER_RATIO)
    (0...length).each{|i| new_array[i] = store[i]}
    @store = new_store
    @capacity = @capacity * BUFFER_RATIO
  end
