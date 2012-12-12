def pythag?(a,b,c)
  ( a**2 + b**2 ) == c**2
end

def answer
  (1..998).each do |i|
    (1..998).each do |j|
      k = 1000 - (i+j)
      next if k < 1
      return i*j*k if pythag?(i,j,k)
    end
  end
    
end
