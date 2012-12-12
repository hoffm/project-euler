def prime?(num)
  return true if num == 2
  (2..Math.sqrt(num).to_i+1).each do |d|
    return false if num % d == 0
  end
  true
end

def answer
  primes = []
  i = 2
  until primes.count == 10001 do
    primes << i if prime?(i)
    i +=1
  end
  primes.last
end
