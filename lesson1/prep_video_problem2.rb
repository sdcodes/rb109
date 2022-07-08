
# You have to create a method that takes a positive integer
# number and returns the next bigger number formed by the same
# digits

# 12 ==> 21
# 513 ==> 531
#2017 ==> 2071
#if no bigger number can be composed using those digits.
# return -1

# 9 ==> -1
# 111 ==> -1
# 531 ==> -1

# steps: 
  # if number size == 1, can return -1 
  # change number into string so it can be split OR use digit method
  # then use permination method to get all the different combinations of digits 
  # put digits back together to make single integer
  # subtract original integer from various new integers and return number that has the lowest difference

def next_bigger_num(integer)
  return -1 if integer.to_s.size == 1
  combos = []
  diff_hash = {}
  integer_size = integer.digits.size
  integer.digits.reverse.permutation(integer_size) do |combo|
  stringed_new_integer = (combo.map! {|n| n.to_s}).join
    if stringed_new_integer.to_i > integer
      diff_hash[stringed_new_integer.to_i] = stringed_new_integer.to_i - integer
    end 
  end 
  if ((diff_hash.min_by {|k, v| v})) == nil
    return -1
  else 
    (diff_hash.min_by {|k, v| v})[0]
  end 
end 

#OTHER METHOD 

def next_bigger_num(integer)
  return -1 if integer.digits.sort[0] == integer.digits.sort[-1]
  new_integers = []
  integer.digits.reverse.permutation do |combos|
    combos.map! { |c| c.to_s }
    new_integers << combos.join.to_i if combos.join.to_i >= integer
  end 
    if new_integers.empty? || new_integers.size == 1
      -1 
    elsif new_integers.size == 2
      new_integers[1]
    else 
      new_integers.sort[(new_integers.index(integer)) + 1]
    end 
end

p next_bigger_num(9) #== -1
p next_bigger_num(12) #== 21
p next_bigger_num(513) #== 531
p next_bigger_num(2017) #== 2071
p next_bigger_num(111) #== -1
p next_bigger_num(531) #== -1
 p next_bigger_num(123456789) #== 123456798
