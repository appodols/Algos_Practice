class Stack
  def initialize(size)
    @size = size
    @store = Array.new(size)
    @top = -1
  end

  def pop
    if empty?
      nil
    else
      popped = @store[@top]
      @store[@top] = nil
      @top -= 1
      popped
    end
  end

  def push(element)
    if(full? || element.nil?)
      nil
    else
      top += 1
      @store[@top] = element
      self
    end
  end

  def size
    @store.length
  end

  def look
    @store[@top]
  end

  private

  def full?
    top == @size - 1
  end

  def empty?
    @top == -1
  end
end
