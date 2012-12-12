def palandrome(int)
  str = int.to_s
  len = str.length
  segcond_seg_start = len.odd? ? len/2 + 1 : len/2
  str[0..(len/2 - 1)] == str[(len/2)..-1].reverse
end

def answers
  a = (100..999).to_a.reverse
  b = a
  ans = []
  a.each do |n|
    b.each do |m|
      ans << [[n,m], n*m] if palandrome(n*m)
    end
  end

  ans.sort_by{|el| el[1]}.last.last
end
