class Queue
  def initialize(size)
    @size = size
    @store = Array.new(size)
    @head, @tail = -1, 0
  end

  def dequeue
    if empty?
      nil
    else
      dequeued = @store[@head]
      @store.unshift(nil)
      @store.pop
      @tail += 1
      dequeued
    end
  end

  def enqueue(element)
    if (full? || element.nil?)
      nil
    else
      @tail -= 1
      @store[@tail] = element
      self
   end
  end

  def size
    @size
  end

  private

  def full?
   @tail == -size
  end

  def empty?
    @head == -1 && @tail == 0
  end
end
