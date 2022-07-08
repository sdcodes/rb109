# Given a non-empty string check if it can be constructed by taking
# substring of it and appending multiple copies of the substring together.
# You may assume the given string consists of lowercase English 
# letters only.

# Example 1:
#input: abab
# output: true
#explnation: its the substring "ab" twice

#example 2:
#input: aba
#output: false

# input: string
# output: boolean
# steps: 
  # get size of string and the different multiples that can equal size
    # example: "abab" size == 4 =>     1 * 4, 2 * 4
      # "abaababaab" size = 10 =>      1 * 10, 2 * 5, 
  # with string, use chars to separate into individual ch
  # collect the substrings depending on the multiples of the size
  # then multiply them until size of string
  # compare altered substring to string. return true if any of substrings can 
  # be built to equal the string
  
  def repeated_substring_pattern(original_string)
    index = 1
    all_substrings = []
    substring_counter = []
    loop do 
     all_substrings << original_string[0, index] 
      index += 1
      break if index == original_string.size
    end
    all_substrings.each do |substring|
      times = original_string.size / substring.size
      substring_counter << substring * times 
    end 
    substring_counter.include?(original_string)
  end
  
  # OTHER METHOD 
  
  # input: string
# output: boolean - can you make up the string with multiplies of substrings 
# steps: 
  # 1) obtain all possible substrings
    # use a loop & a catching array to hold all possible substrings. start with string[0, group_size] and expand group_size until the end of string
    # make sure catching array has all possible substrings that can be created starting from the first letter  
  # 2) multiply substring a certain amount of times in order to get string length. 
    # string.size / substring.size will equal the num to multiply the substring with 
    # collect possible_correct_substring and compare to string
  # 3) check to see if created full substring == string. return boolean result
    # return boolean result
    
   
def repeated_substring_pattern(original_string)
  group_size = 1
  catch_arr = []
  loop do 
    catch_arr << original_string[0, group_size]
    group_size += 1
    break if original_string.size == group_size 
  end 
  catch_arr.each do |substring|
    return true if substring * (original_string.size/substring.size) == original_string
  end 
  false
end 


p repeated_substring_pattern("abab") #== true 
p repeated_substring_pattern("aba") #== false
p repeated_substring_pattern("aabaaba") #== false
p repeated_substring_pattern("abaababaab") #== true
p repeated_substring_pattern("abcabcabcabc") #== true