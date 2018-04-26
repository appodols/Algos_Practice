require_relative "static_array"
class RingBuffer

  attr_accessor :head, :tail, :capacity

  def initialize()
    @store = StaticArray.new(DEFAULT_LENGTH)
    @capacity = DEFAULT_LENGTH
    @length = 0
    @head, @tail = 0,-1
  end

  def insert(val)
    resize! if isFull?
    @tail = (@tail + 1) % @capacity
    @store[@tail] = val
  end

  def delete
    n = 0
    if(isEmpty?)
      nil
    else
      n = @store[@head]
      @head = (@head +1) % @capacity
      #note here we are not deleting but merely allowing for the tail to overwrite the head
    end
    n
  end


  DEFAULT_LENGTH = 3
  BUFFER_RATIO = 2
  def isFull?
    @head == ((tail + 1) % @capacity)
  end

  def isEmpty?
    @head == @tail
  end

  def resize!
    new_store = StaticArray.new(@capacity * BUFFER_RATIO)
    (0...@capacity).each{|i| new_store[i] = @store[i]}
    @store = new_store
    @capacity = @capacity * BUFFER_RATIO
    @head = 0
  end


end
