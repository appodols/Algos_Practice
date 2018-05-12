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


class StackWithMin < Stack

  def initialize(size)
    @s2 = Stack.new(size)
  end

  def push(value)
    if(value <= min)
      @s2.push(min)
    end
    return value
  end

  def pop
    popped = super.pop
    if(value == min())
      @s2.pop
    end
    popped
  end

  def min
    if(s2.empty?)
      return 10000
    else
      return @s2.look()
    end
  end





end
