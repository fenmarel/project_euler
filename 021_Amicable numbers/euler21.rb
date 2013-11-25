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
