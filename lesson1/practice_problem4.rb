def closest_numbers(array)
  distance_hash = {}
  array.combination(2) do |combos|
   distance_hash[combos] = (combos.sort { |a, b| b <=> a}).inject(:-)
  end 
  value = distance_hash.values.min
  distance_hash.key(value)
end 
  
    
  
  

p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 7, 17]) == [12, 7]
