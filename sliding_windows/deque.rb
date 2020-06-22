#Maximum in sliding window can be solved using multiple approaches, but best among them is deque which runs in linear time.
# 1 Approach. Find maximum in search window of K size. Complexity = (n-k + 1)*k => O(n*k)
# 2 Approach. Create first max heap of K size. An every window slide, replace the leaving element with the new inserted one, tje complexity here is (n-k+1)*(k+logK)
# 3 Approach. Create BST of K size, then delete old element and insert a new element, and then find the rightmost element. Complexity = (n-k+1)*(logk) => O(nlogK)
# 4 Approach. Create a deque of size K ensuring the elements are in decreasing order from front to rear. It is done in O(n) time complexity


# array = [8, 5, 10, 7, 9, 4, 15, 12, 90, 13]

class Deque
  attr_reader :contents
  attr_writer :contents

  def initialize(*elements)
    self.contents = elements
  end

  def enq item
    self.contents = (self.contents || []).push(item)
  end

  def deq
    raise "Queue is empty!" if self.contents.empty?
    self.contents.shift
  end

  def enq_front item
    self.contents = (self.contents || []).unshift(item)
  end

  def deq_rear
    self.contents.pop
  end

  def empty?
    self.contents.empty?
  end

  def peek_last
    self.contents[-1]
  end
end


  @array = [8, 5, 10, 7, 9, 4, 15, 12, 90, 13]
  @deque = Deque.new


  def create_deque()
    (0...3).each do |index|
      if(@deque.empty?)
        @deque.enq(index)
      else
        while(!@deque.empty? and @deque.peek_last < @array[index])
          @deque.deq_rear
        end
        @deque.enq index
      end
    end
  end
