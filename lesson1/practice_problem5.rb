def least_common_char(string)
  ch_arr = string.chars 
  ch_hash = {}
  ch_arr.each do |ch|
    if ch_hash.key?(ch.downcase)
      ch_hash[ch.downcase] += 1
    else
      ch_hash[ch.downcase] = 1
    end 
  end 
  new_array = ch_hash.min_by {|k, v| v}
  new_array[0]
end 

p least_common_char("Hello World") #== "h"
p least_common_char("Peter Piper picked a peck of pickled peppers") #== "t"
p least_common_char("Mississippi") #== "m"
p least_common_char("Happy birthday!") #== ' '
p least_common_char("aaaaaAAAA") #== 'a'




