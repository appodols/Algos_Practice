module LinkedList

    class Node
      attr_accessor :value, :next_node

      def initialize(value, next_node)
        @value = value
        @next_node = next_node
      end


    end

    class Queue
      def initialize(nodes = [])
        @head, @tail = nil, nil
        @size = 0
        nodes.each{|item| enqueue(node.value)}
      end

      def enqueue(value)
          to_add = Node.new(value, nil)
          if @tail
            @tail.next_node = to_add
            @tail = to_add
          else
            @head, @tail = to_add
          end
        @size += 1
        to_add.value
      end

      def empty?
        @head.nil?
      end

      def dequeue
        raise "Stack is empty" if empty?
        if(@size == 0)
          @size = 0
          @head, @tail = nil, nil
          return @head.value
        end
        to_delete = @head
        @head = to_delete.next_node
        @size -= 1
        @head.value
      end
    end
  end
end
