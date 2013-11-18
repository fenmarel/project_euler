def euler16(n)
  (2**n).to_s.split('').map { |i| i.to_i }.inject(:+)
end



start = Time.now
p euler16(1000)
puts "finished in %.3f secs" % (Time.now - start)