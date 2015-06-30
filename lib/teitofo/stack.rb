require 'teitofo/exceptions'

module TeiToFo
  class Stack
    include Enumerable

    def initialize
      @data = Array.new
    end

    def empty?
      @data.empty?
    end

    def size
      @data.size
    end

    def [](n)
      if (n < 0 or n >= self.size)
        raise StackIndexOutOfBoundsError.new("self}")
      end
      @data.reverse[n]
    end

    def push(element)
      @data << element
    end

    def pop
      raise StackEmptyError.new("#{self}") if @data.empty?
      @data.pop
    end

    def top
      @data.last
    end

    def to_s
      output = "["
      output += @data.reverse.join(', ')
      output += "]"
    end

    def each(&block)
      @data.each(&block)
    end
  end
end
