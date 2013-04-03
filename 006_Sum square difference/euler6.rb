def euler6(n)
  sum_of_squares = ((1..n).map {|i| i**2}).inject(0) {|acc, i| acc + i}
  square_of_sums = ((1..n).inject(0) {|acc, i| acc + i})**2
  return square_of_sums - sum_of_squares
end

start = Time.now
puts euler6(100)
puts "finished in %.3f ms" % ((Time.now - start) * 1000)
