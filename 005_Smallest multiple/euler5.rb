
def euler5(range)
  (1..range).inject(1) {|result, ele| result.lcm(ele)}
end


puts euler5(20)
