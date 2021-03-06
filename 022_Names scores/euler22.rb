# Using names.txt (right click and 'Save Link/Target As...'), a 46K text 
# file containing over five-thousand first names, begin by sorting it 
# into alphabetical order. Then working out the alphabetical value for each 
# name, multiply this value by its alphabetical position in the list to obtain 
# a name score.
# 
# For example, when the list is sorted into alphabetical order, COLIN, which 
# is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN 
# would obtain a score of 938 × 53 = 49714.
# 
# What is the total of all the name scores in the file?


File.open("names.txt") do |names|
  name_list = names.read.gsub('"', '').split(",").sort
  score = 0

  name_list.each_with_index do |name, dex|
    tmp = 0
    name.each_char do |c|
      tmp += (c.ord - 64)
    end
    score += (tmp * (dex + 1))
  end
  p score
end
