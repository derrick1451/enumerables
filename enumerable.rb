module Enumerable
    def all?(&block)
        each {|item| return false unless p block.call(item) }
    end
    def any?(&block)
        each{|item|  true if block.call(item)}
    end
    def filter(&block)
        list = []
        each {|item| list<<item if block.call(item)}
    end
end