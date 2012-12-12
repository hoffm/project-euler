def prime?(num)
  return true if num == 2
  (2..Math.sqrt(num).to_i+1).each do |d|
    return false if num % d == 0
  end
  true
end

def answer
  sum = 0
  (2..2000000).each do |n|
    sum += n if prime?(n)
  end
  sum
end
