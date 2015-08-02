class Array
  def inject_alternative(initial = nil)
    start = initial || first
    start == initial ? self[0..-1].each {|x| start = yield(start, x)} : self[1..-1].each {|x| start = yield(start, x)}
    start
  end


  def recursive_inject(initial=nil, &block)
    start = initial || first
    result = yield(start, first)
    self.length == 1 ? result : self[1..-1].recursive_inject(result, &block)
  end
end

p [1,2,3,4].inject_alternative(1) { |x,y| x + y }
