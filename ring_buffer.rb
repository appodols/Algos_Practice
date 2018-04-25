require_relative "static_array"


class RingBuffer

  attr_accessor :length

  def initialize()
    @store = StaticArray.new(DEFAULT_LENGTH)
    @capacity = DEFAULT_LENGTH
    @length = 0
    @head, @tail = 0,0
  end

  def[](index)
    @store[(index + head) % capacity]
  end

  def[](index)
    @store[(index + head) % capacity]
  end


  def push(val)
    resize! if isFull?
    self[length] = val
    @length += 1
    @tail = (@tail + 1) % capacity
  end

  def pop

  end 



private
  DEFAULT_LENGTH = 10
  BUFFER_RATIO = 2
  attr_accessor :capacity, :store
  attr_writer :length

  def isFull?
    @head == (tail % capacity) + 1
  end

  def isEmpty?
    @head == @tail
  end


  def check_index(index = 0)
    raise "index isn't in array" if index > length -1
  end

  def resize!
    new_store = StaticArray.new(length * BUFFER_RATIO)
    (0...length).each{|i| new_array[i] = store[i]}
    @store = new_store
    @capacity = @capacity * BUFFER_RATIO
    @head = 0
  end





end
