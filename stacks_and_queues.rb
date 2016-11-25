class MyQueue
  def initialize
    @store = []
  end

  def enqueue(el)
    @store << el
  end

  def dequeue(el)
    @store.shift
  end

  def peek
    @store.dup
  end

  def size
    @store.length
  end

  def empty?
    @store.empty?
  end
end

class MyStack

  attr_reader :max, :min

  def initialize
    @store = []
    @max = nil
    @min = nil
  end

  def pop
    var = @store.pop
    @max = nil if empty?
    @max = _____ if var == @max
    var
  end

  def push(el)
    @store.push(el)
    @max = el if @max.nil? || el > @max
  end

  def peek
    @store.dup
  end

  def empty?
    @store.empty?
  end

  def size
    @store.size
  end
end

class StackQueue
  def initialize
    @enqueued = MyStack.new
    @storage = MyStack.new
  end

  def enqueue(el)
    @enqueued.push(el)
  end

  def dequeue
    (@enqueued.size-1).times { @storage.push(@enqueued.pop) }
    result = @enqueued.pop
    until @storage.empty?
      @enqueued.push(@storage.pop)
    end
    result
  end

  def peek
    @enqueued.dup
  end

  def size
    @enqueued.size
  end

  def empty?
    @enqueued.empty?
  end
end
