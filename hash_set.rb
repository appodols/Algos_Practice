class HashSet
  attr_reader :count

  def initialize(num_buckets = 10)
    @store = Array.new(num_buckets) {Array.new}
    @count = 0
  end
  #we are creating an array at each bucket to hold values
  #worse case of input is O(n) because we look through all the input
  #this works for numbers because numbers have a default hashing function
  def insert
    return false if include?(key)
    self[key.hash] << key
    @count += 1
    resize! if num_buckets < @count
    key
  end

  def remove(key)
    return nil unless innclude?(key)
    self[key.hash].delete(key)
    @count -= 1
  end


  def include?(key)
    self[key.hash].include?(key)
  end

  private

  def num_buckets
    @store.length
  end

  def resize!
    old_store = @store
    @count = 0
    @store = Array.new(num_buckets*2){Array.new}
    #we are doubling array each time we resize
    old_store.flatten.each{|key| insert(key)}
  end

  def [](num)
    @store[num % num_buckets]
  end
  #we use this function to first mod the output of the hashing function of the item

end
