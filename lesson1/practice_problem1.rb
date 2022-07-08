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
  
  #ANOTHER WAY
  
  def smaller_numbers_than_current(array)
  ind = 0
  counter = 0
  new_array = []
  array.each do |index|
    while ind < array.uniq.size 
      if index > array.uniq[ind]
        counter += 1
      end 
      ind += 1
    end
    new_array << counter 
    counter = 0
    ind = 0
  end 
  new_array
end 
  
p smaller_numbers_than_current([8,1,2,2,3])

#OTHER WAY

def smaller_numbers_than_current(nums_array)
  counter = 0
  index = 0
  new_array = []
  nums_array.each do |num|
    loop do 
      counter += 1 if num > nums_array.uniq[index]
      index += 1
      break if index == nums_array.uniq.size
    end 
    new_array << counter
    index = 0
    counter = 0    
  end
  new_array
end

# array vs. array.uniq (greater than or lesser than)
# input: array of num
# output: array - counting num that are smaller than n
# will need to iterate over array.uniq and compare all values
# to each individual n in array
# a counter will keep track of times array[n] is larger than 
# array.uniq[n] 

# ANOTHER WAY

def smaller_numbers_than_current(num_array)
  count = 0
  index = 0
  num_array.map do |num|
    count = 0
    index = 0
    loop do
      count += 1 if num > num_array.uniq[index]
      index += 1
      break if index == num_array.uniq.size
    end
    count
  end
end

# OTHER WAY
def smaller_numbers_than_current(original_array)
  uniq_arr = original_array.uniq
  original_array.map do |number|
    count = 0
    uniq_arr.each do |n|
      count += 1 if number > n 
    end
    count 
  end     
end