*/
/*
I assume that all arrays will be equally divided between 3 stacks
*/

NUMBER_STACKS = 3
STACK_CAPACITY = 100


def initialize(stack_size)
  @arr = Array.new(stack_size*STACK_CAPACITY)
  values = []
  sizes = []
end

def pop(stackNum)
  if empty?(stackNum)
    raise "error"
  else
    topIndex = indexofTop(stackNum)
    popped = values[indexofTop]
    values[indexOfTop(stackNum)] = 0
    sizes[stackNum] -= 1
    return popped
  end
end

def push(stackNum)
  return "error" if isFull?(stackNum)
  sizes[stackNum] += 1
  values[indexofTop(stackNum)] = value
end

def isFull?(stackNum)
  return (sizes[stackNum] == STACK_CAPACITY)
end

def indexOfTop(stackNum)
  offset = stackNum * STACK_CAPACITY
  size = sizes[stackNum]
  offset + size - 1
  #because stacks are zero indexed, if we say for stack 2, we get 200 covering first 2 stacks, second is third
  #then we return zero indexed
end

def empty?(stackNum)
  return (sizes[stackNum] == 0)
end


def peek(stackNum)
  if empty?(stackNum)
    raise "error"
  else
    return indexofTop(stackNum)
  end
end







/*
