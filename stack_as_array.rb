class Stack

  attr_accessor :store


  def initialize(store = [])
    @store = store;
  end

  def push(item)
    store << item
  end

  def pop
    store.pop
  end

  def isEmpty?
    return store.length.zero?
  end
  
end
