module LinkedList

    class Node
      attr_accessor :value, :next_node

      def initialize(value, next_node)
        @value = value
        @next_node = next_node
      end


    end

    class Stack
      def initialize
        @first = nil
      end

      def push(value)
        @first = Node.new(value, @first)
      end

      def empty?
        @first.nil?
      end

      def pop
        raise "Stack is empty" if empty?
        value = @first.value
        @first = @first.next_node
        value
      end
    end
  end
end
