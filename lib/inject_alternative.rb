
class Array
  def inject_alternative(initial=nil)
    answer = initial || first
    self[0..-1].each do |x|
      answer = yield(answer, x)
    end
    answer
  end
end
