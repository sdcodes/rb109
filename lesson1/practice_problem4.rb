def closest_numbers(array)
  distance_hash = {}
  array.combination(2) do |combos|
   distance_hash[combos] = (combos.sort { |a, b| b <=> a}).inject(:-)
  end 
  value = distance_hash.values.min
  distance_hash.key(value)
end 
  
    
 # OTHER WAY
 
 def closest_numbers(num_array)
  combo_hash = {}
  num_array.combination(2) {|combo| combo_hash[combo] = (combo.sort {|a, b| b <=> a }).inject(:-) }
  min_combo = combo_hash.min { |pair1, pair2| pair1[1] <=> pair2[1] }
  min_combo[0]
end 
  
 # OTHER WAY
 def closest_numbers(num_arr)
  combo_hash = {}
  num_arr.combination(2) do |combo| 
    combo_hash[combo] = combo.sort {|a, b| b <=> a}.inject(:-)
  end 
  combo_hash.min_by { |k, v| v}[0]  
end
 

p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 7, 17]) == [12, 7]
