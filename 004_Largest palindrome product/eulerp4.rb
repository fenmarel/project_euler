def palindromic_product(lo, hi, current=[0, 0, 0])
  hi.downto(lo) do |i|
    hi.downto(lo) do |j|
      tmp = i*j
      if tmp.to_s == tmp.to_s.reverse && tmp > current[2]
        current = [i, j, tmp]
        return palindromic_product(j, i-1, current)
      end
    end
  end
  return current
end

start = Time.now
answer = palindromic_product(100, 999)
puts "finished in %.3f secs" % (Time.now - start)

puts "#{answer[0]} * #{answer[1]} = #{answer[2]}"
