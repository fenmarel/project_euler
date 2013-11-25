# 2**15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
# 
# What is the sum of the digits of the number 2**1000?


def euler16(n)
  (2**n).to_s.split('').map { |i| i.to_i }.inject(:+)
end



start = Time.now
p euler16(1000)
puts "finished in %.3f secs" % (Time.now - start)