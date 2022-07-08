
# The maximum sum subarray problem consists in finding
# the maximum sum of a contiguous subsequence in an array
# of integers

#maxSequence [ -2, 1, -3, 4, -1, 2, 1, -5, 5]
# -- should be 6: [4, -1, 2, 1]
# easy case is when the array is made up of only positive
# numbers and the maximum sum is the sum of the whole array
#if the array is made up of only negative numbers
# return 0 instead

# empty array is considered to have zero greatest sum. 
#note taht the empty array is also a vlid subarray

# steps:
  # return 0 if array is empty or all negative
  # best way would be to do a start with index 0 and a group 2, save the sum of such subarray
  # continue increasing group size until we reach the end of the array
  # move to index 1 and start slowing increasing size of subarray as previous and so on
  # will have to save not just the sum but the actual subarray - use hash to save subarray as key and sum as value
  #this will need two loops - one to control the index and  the other to control teh group size. group size is inner loop
  
def max_sequence(array_of_nums)
  return 0 if array_of_nums.empty? || array_of_nums.all? {|n| n.negative?}
  return array_of_nums[0] if array_of_nums.size == 1
  index = 0
  group_size = 2
  container = {}
  loop do 
    group_size = 2
    loop do
      container[array_of_nums[index, group_size]] = array_of_nums[index, group_size].sum
      group_size += 1
      break if group_size + index > array_of_nums.size
    end 
    index += 1
    break if index + 2 == array_of_nums.size
  end
 (container.max_by {|k, v| v})[1]
end 

# OTHER METHOD

def max_sequence(original_arr)
  return 0 if original_arr.empty? || original_arr.all? {|n| n.negative?} 
  return original_arr[0] if original_arr.size == 1
  sum_collection = []
  index = 0
  group_size = 2
  loop do 
    until group_size + index > original_arr.size 
      sum_collection << original_arr[index, group_size].sum
      group_size += 1
    end
    index += 1
    break if index >= original_arr.size - 2
    group_size = 0
  end
  sum_collection.max
end 


p max_sequence([]) == 0
p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) #== 6
p max_sequence([11]) #== 11
p max_sequence([-32]) #== 0
p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) #== 12