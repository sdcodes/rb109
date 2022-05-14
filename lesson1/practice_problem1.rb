def smaller_num_than_current(array)
  ind = 0
  counter = 0
  index = 0
  new_array = []
  loop do 
    loop do 
      if array[ind] > array.uniq[index]
        counter += 1
      end
      index += 1
      break if index >= array.uniq.size
      
    end
    new_array << counter
    counter = 0
    index = 0
    ind += 1
    break if ind >= array.size 
  end
  new_array
end 
  
  p smaller_num_than_current([8, 1, 2, 2, 3])
  p smaller_num_than_current([1,4,6,8,13,2,4,5,4])
  p smaller_num_than_current([7,7,7,7])
  p smaller_num_than_current([6,5,4,8])
  p smaller_num_than_current([1])
  
  
  # input: array of number
# return: an array that list how many numbers are smaller than the listed num of original array. When counting num, use only unique values
# example: [8, 1, 2, 2, 3] => [3, 0, 1, 1, 2]
# would pick one element and compare to remaining elements in array w/ unique values. have a counter to keep track of elements larger than picked element.  
# push counter to new array. move on to new picked element and compare to array w/ unique values of original.  
#return new array w/ counted values
# ways to write method:
  # w/ loop w/in a loop. inner loop will loop through uniq.array while outer loop will iterate through the picked element to be compared to
  # have array.uniq assigned to new variable - this is what is used to get the specific count of smaller num.
  # use .select to select elements that are larger than num in array.uniq. get size of this array. this num is then pushed into new_array
  #  