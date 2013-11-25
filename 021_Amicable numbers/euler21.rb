# Let d(n) be defined as the sum of proper divisors of n (numbers 
# less than n which divide evenly into n).
# If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable 
# pair and each of a and b are called amicable numbers.
# 
# For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 
# 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 
# are 1, 2, 4, 71 and 142; so d(284) = 220.
# 
# Evaluate the sum of all the amicable numbers under 10000.


def lister(n)
  ans = Hash.new(0)
  (1...n).each do |i|
    (1..(i/2)).each do |div|
      ans[i] += div if i % div == 0
    end
  end
  ans
end


def euler21(hash)
  nums = []
  hash.each do |key, val|
    if key == hash[val] && key != val
      nums << key
    end
  end
  nums.inject(:+)
end

start = Time.now
p euler21(lister(10000))
p "finished in %.3f secs" % (Time.now - start) 
