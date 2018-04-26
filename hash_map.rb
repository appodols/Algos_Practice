require_relative 'stack_as_linked_list'
class HashMap
  include Enumerable
  attr_reader :count
  def initialize(num_buckets= 10)
    @store = Array.new(num_buckets){stack_as_linked_list.new}
  end

  def include?(key)
    bucket(key).include?
  end

  def set (key,val)
    resize! if @count >= num_buckets
    if include?(key)
      bucket(key).update(key,val)
    else
      bucket(key).append(key,val)
      @count +=1
    end
end

  def get(key)
    bucket(key).get(key)
    #iterates through all buckets in the linked-list chained to a particular bucket
  end

  def delete(key)
    removal = bucket(key).remove(key)
  end




  private
    def num_buckets
      @store.length
    end

    def resize!
      old_store = @old_store
      @store = Array.new(num_buckets * 2){stack_as_linked_list.new}
      @count = 0
      old_store.each do |bucket|
        bucket.each{ |link| set(link.key, link.val)}
      end
    end

    def bucket(key)
      @store[key.hash % num_buckets]
    end



end
