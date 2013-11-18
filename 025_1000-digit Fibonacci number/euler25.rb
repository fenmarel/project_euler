def fib_gen
  a = 1
  b = 1
  Enumerator.new do |gen|
    loop do
      gen.yield a
      a, b = b, (a+b)
    end
  end
end


def euler20(generator)
  term = 0
  current = 0
  while current.to_s.length < 1000
    current = generator.next
    term += 1
  end
  term
end

start = Time.now
p euler20(fib_gen)
puts "finished in %.3f secs" % (Time.now - start)


