# input: array of integers
# return: sum (integer) of 5 consecutive integers in array
# if few than 5 elements, return nil
# by consecutive integers, they mean in the current indexed list
# should be able to use range of 5 nums and compare all the different sums that results in. return smallest sum

def minimum_sum(array)
  index = 0
  all_sums = []
  if array.size < 5
    return nil
  else
    loop do 
       all_sums << (array[index, 5]).sum
      index += 1
      break if index > array.size - 5
    end
  end
  all_sums.sort[0]
end 

# OR OTHER WAY:

# input: array of integers
# return: min sum of 5 consecutive nums in array
# nil if array.size < 5
# should group by 5 in their consecutive order
# collect sum of each group and select min sum
# methods - 
  # loop - 
    # array[index, 5].sum would be added to total_sums_array
    # index would change in each iteration so as to create
    # a new 5num group. 
    # break would have to happen once the 5num group includes
    #last num of array
    # total_sums_array => can either use sort[0] or .min


def minimum_sum(num_array)
  total_sums_array = []
  index = 0
  return nil if num_array.size < 5
  loop do 
    total_sums_array << (num_array[index, 5]).sum
    index += 1
    break if index + 5 == num_array.size
  end 
  total_sums_array.min 
end

# OTHER WAY
def minimum_sum(array)
  return nil if array.size < 5
  index = 0
  collection = []
  until 5 + index > array.size
    collection << array[index, 5].sum
    index += 1
  end
  collection.min
end 



p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10
  