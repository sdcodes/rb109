
#given 2 strings, your job is to find out if there is
#a substring that appears in both strings. You will 
# return true if you find a substring that appears
#in both strings, or false if you do not. 
# we only care about substrings that are longer 
# than one letter long.

# input: two strings
# output: boolean; do the two strings have a substring in common?
# steps: 
# 1) obtain all substrings of each string
  # use a loop and string[] to capture all substrings into an array
  # then do the same but for the other string, use different array
# 2) compare substrings
  # see if array contains more than one same substring
  

def all_substrings(string)
  return string if string.empty?
  container = []
  group_size = 2
  index = 0
   loop do  
      loop do 
        container << string[index, group_size]
        group_size += 1
        break if group_size + index >= string.size
      end 
      index += 1
      group_size = 2
      break if index == string.size - 1
    end
  container.map {|string| string.downcase}
end 
  

def substring_test(string1, string2)
  string1 = all_substrings(string1)
  string2 = all_substrings(string2)
  boolean = []
  return false if string1.empty? || string2.empty?
  boolean << string1.any? { |string| string2.include?(string) }
  boolean << string2.any? { |string| string1.include?(string) }
  boolean.include?(true) ? true : false
end    

# OTHER METHOD

 def substring_test(string1, string2) 
    return false if string1.empty? || string2.empty?
    index = 0
    hash = {string1 => [], string2 => []}
    loop do  
      group_size = 2
      until group_size + index > string1.size
        hash[string1] << string1[index, group_size]
        group_size += 1
      end 
      index += 1
      break if index == string1.size - 2
    end 
    index = 0
    loop do  
      group_size = 2
      until group_size + index > string2.size
        hash[string2] << string2[index, group_size]
        group_size += 1
      end 
      index += 1
      break if index == string2.size - 2
    end
    hash[string1].each {|ss| return true if string2.include?(ss.downcase) }
    hash[string2].each {|ss| return true if string1.include?(ss.downcase) }
    false
end 



p substring_test("Something", "Fun") == false
p substring_test("Something", "Home") == true
p substring_test("Something", "Fun") == false
p substring_test("Something", "") == false
p substring_test("", "Something") == false
p substring_test("BANANA", "banana") == true
p substring_test("test", "lllt") == false
p substring_test("", "") == false
p substring_test("1234567", "541265") == true
p substring_test("supercalifragilisticexpialidocious", "SoundOfItIsAtrociou") == true

# # # ---- 