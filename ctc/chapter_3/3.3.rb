class SetOfStacks

STACK_CAPACITY = 100

  def initialize
    @stacks = []

  end

  def push(value)
    last = getLastStack
    if(!!last && !last.full?)
      last.push(value)
    else
      s = Stack.new(STACK_CAPACITY)
      s.push(value)
      @stacks.push(s)
    end
  end

  def pop
    last = getLastStack
    if(!last)
      raise 'no stack exception'
    else
      popped = last[-1]
      @stacks.pop
      return popped
    end
  end

  def getLastStack
    @stacks[-1]
  end


end



#questions
#are the size of these arrays fixed?
