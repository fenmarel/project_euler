def euler20(n)
  (1..n).inject(:*).to_s.split('').map { |i| i.to_i }.inject(:+)
end



start = Time.now
p euler20(100)
puts "finished in %.3f secs" % (Time.now - start)