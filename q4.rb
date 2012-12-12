def answer
  a = (100..999).to_a.reverse
  b = a
  ans = []
  a.each do |n|
    b.each do |m|
      palandrome = (n*m).to_s == (n*m).to_s.reverse
      ans << n*m if palandrome
    end
  end

  ans.sort.last
end
