def square_of_sum(range)
  range.to_a.map{|n| n**2}.inject(&:+)
end

def sum_of_squares(range)
  (range.to_a.inject(&:+))**2
end

def diff(range)
  square_of_sum(range) - sum_of_squares(range)
end

# diff((1..100))
