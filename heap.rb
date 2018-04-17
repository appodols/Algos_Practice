class PriorityQueue
  #this is for a min ordered binary-heap
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

private

  def bubble_up(index)
    while(index >1 && heap[index/2] > heap[index])
      exchange(index, index/2)
      index = index/2
    end
  end


  def bubble_down(index)
    while(2*index <= heap.size)
      j = 2*index
      if( j < heap.size)
        j+=1 if heap[j+1] > heap[j]
      end

      if(heap[index] < j)
        break
      end

      exchange(index,j)
      index = j

    end


  end


  def exchange(first, second)
    @heap[first], @heap[second] = @heap[second],@heap[first]
  end


end
