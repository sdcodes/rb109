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


p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10
  