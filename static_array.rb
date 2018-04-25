class StaticArray

  attr_accessor :store

  def initialize(length)
    @store = Array.new(length)
    @size = length
  end

  def[](index)
    @store[index]
  end


  def size
    @size
  end

  def[]=(index, value)
    raise "error" if index > @size -1
    @store[index] = value
  end
  
end
