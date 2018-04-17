class PriorityQueue

  attr_reader :heap

  def initialize(heap = [nil])
    @heap = heap
  end


  def empty?
    heap.empty?
  end

   alias_method :push, :"<<"

  def <<(element)
    heap << element
    bubble_up(heap.size-1)
  end

  def pop
    exchange(1, heap.size-1)
    min = heap.pop
    bubble_down(1)
    min
  end


end
