class PriorityQueue
  #this is for a min ordered binary-heap
  attr_reader :heap

  def initialize(heap = [nil])
    @heap = heap
  end

  def empty?
    heap == [nil]
  end

  def inserts (elements)
    elements.each{|el| self.insert(el)}
  end


   # alias_method :push, :<<

  def insert(element)
    heap << element
    bubble_up(heap.size-1)
  end

  def remove_min
    exchange(1, heap.size-1)
    min = heap.pop
    bubble_down(1)
    min
  end



  def bubble_up(index)
    while(index >1 && heap[index/2] > heap[index])
      exchange(index, index/2)
      index = index/2
    end
  end


  def size
    heap.length-1
  end


  def bubble_down(index)
    while(2*index <= heap.size)
      j = 2*index

      #this puts J as the left child
      if( j < heap.size)
        j+= 1 if heap[j+1] < heap[j]
      end

      #checks if right child is smaller and assigns J to point to smallest child

      if(heap[index] < j)
        break
      end

    #if heap order--i.e if the top is smaller than J, you can swap

      exchange(index,j)
      index = j

    end


  end


  def exchange(first, second)
    @heap[first], @heap[second] = @heap[second],@heap[first]
  end


end
