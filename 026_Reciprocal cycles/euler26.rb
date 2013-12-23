# A unit fraction contains 1 in the numerator. The decimal representation of 
# the unit fractions with denominators 2 to 10 are given:
# 
# 1/2 =   0.5
# 1/3 =   0.(3)
# 1/4 =   0.25
# 1/5 =   0.2
# 1/6 =   0.1(6)
# 1/7 =   0.(142857)
# 1/8 =   0.125
# 1/9 =   0.(1)
# 1/10  =   0.1
# Where 0.1(6) means 0.166666..., and has a 1-digit recurring cycle. It can 
# be seen that 1/7 has a 6-digit recurring cycle.
# 
# Find the value of d < 1000 for which 1/d contains the longest recurring 
# cycle in its decimal fraction part.

require 'bigdecimal'
require 'prime'


def euler26(denom_max)
  primer = Prime::EratosthenesGenerator.new
  one = BigDecimal.new(1)
  
  max_len = 1
  ans = 0
  current = primer.next
  until current > denom_max do
    if (1.0 / current).to_s.length > 15
      tmp = (one.div(current, 3000)).to_s[2..-4]
      check = check_repeats(tmp, max_len)
      if check > max_len
        max_len = check
        ans = current
      end
    end
    current = primer.next
  end
  return "Answer: #{ans}, with #{max_len} repeating digits"
end

def check_repeats(n, current_max=1)
  if n.length > current_max
    check_len = (current_max / 2.0).ceil
    stop_len = n.length / 2
    n_arr = n.split('')
    max = 0
    update = false

    until check_len > stop_len do
      tmp = n_arr.each_slice(check_len).to_a[0...-1]
      tmp_half = tmp[0..(tmp.length / 2)]
      tmp_half.each_with_index do |chunk, dex|
        if tmp[dex..-1].all? { |e| e == chunk }
          return check_len          
        end
      end
      check_len += 1 
    end
  end
  0
end

t = Time.now
p euler26(1000) 
puts "finished in #{Time.now - t} sec"


