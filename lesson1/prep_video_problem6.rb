
# You are going to be given an array of integers. Your
# job is to take that array and find an index N where
# the sum of the integers to the left of N is equal to 
# the sum of the integers to the right of N. If there is 
# no index that would make this happen, return -1.

# for example:

# let's say you are given the array [1, 2, 3, 4, 3, 2, 1]
#your method will return the index 3, because at
# the 3rd position of the array, the sum of left side
# of the index [1, 2, 3,] and the sum of the right side
#3, 2, 1] both equal 6.

#another one:
# you are given the array [20, 10, -80, 10, 10, 15, 35]
# at index 0 the left side is []
# the right side is [10, -80, 10, 10, 15, 35]
# they both are equal to 0 when added. (empty arrays are
# equal to 0 in this problem)
# index 0 is the place where the left side and right side are equal

# input: array of nums
# output: index of where sum of left side of index  == sum of right side of index 
# steps:
  # 1) two sides: [0, before_index] and [after_index, end_of_array]
      # have a separate section to take into account starting index w/ zero
      # else, start index w/ 1
  # 2) as the index moves, so does the other variables
  # 3) must compare two sides, if ==, return index, if not, move on to the next iteration
  # 4) empty array == -1; if cannot find ==, return -1
    # would need to have an if statement in which I try to get the right index. return
    # index if tripped, otherwise, else statement will trip which will be to return -1
  
def find_even_index(num_arr)
  before_index = 0
  index = 1
  after_index = 2
  return 0 if num_arr[index, (num_arr.size - 1)].sum == 0
  until index > num_arr.size - 1
    return index if num_arr[0..before_index].sum == num_arr[after_index..(num_arr.size - 1)].sum
    index += 1
    before_index += 1
    after_index += 1
  end 
  return -1  
end 

#OTHER METHOD

def find_even_index(original_arr)
  return 0 if original_arr[1, original_arr.size - 1].sum == 0
  index = 1
  loop do 
    left_side = original_arr[0..index - 1]
    right_side = original_arr[(index + 1)..(original_arr.size - 1)]
    return index if left_side.sum == right_side.sum
    index += 1
    break if index == original_arr.size 
  end
  return -1
end 

p find_even_index([1, 2, 3, 4, 3, 2, 1]) #== 3
p find_even_index([1, 100, 50, -51, 1, 1,]) #== 1
p find_even_index([1, 2, 3, 4, 5, 6]) #== -1
p find_even_index([20, 10, 30, 10, 10, 15, 35]) #== 3
p find_even_index([20, 10, -80, 10, 10, 15, 35]) #== 0
p find_even_index([10, -80, 10, 10, 15, 35, 20]) #== 6
p find_even_index([-1, -2, -3, -4, -3, -2, -1]) #== 3

