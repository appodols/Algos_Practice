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

def push(stackNum)

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
end

def peek(stackNum)
end







/*
