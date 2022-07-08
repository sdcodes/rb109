def longest(provided_string)
  leading_index = 0
  consecutive_index = 1
  consecutive_substrings_array = []
  consecutive_substring = ""
  return provided_string if provided_string.size <= 1 
  loop do 
    consecutive_substring = provided_string[leading_index]
  loop do 
    if consecutive_substring[-1].ord <= provided_string[consecutive_index].ord
       consecutive_substring << provided_string[consecutive_index]
    else 
      break
    end 
    consecutive_index += 1
    break if consecutive_index >= provided_string.size 
  end 
  consecutive_substrings_array << consecutive_substring
  leading_index += 1
  consecutive_index = (leading_index + 1)
  break if leading_index >= (provided_string.size - 1)
end 
consecutive_substrings_array.max_by {|substring| substring.size}
end 

      
    
 p longest('asd') == 'as'
 p longest('nab') == 'ab'
 p longest('abcdeapbcdef') ==  'abcde'
 p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
 p longest('asdfbyfgiklag') == 'fgikl'
p longest('z') == 'z'
 p longest('zyba') == 'z' 
    
 
# input: string
# output: new string that's a substring
# loop do could be possible solution
#steps: 
  # 1) separate individual characters 
  # 2) iterate over characters
  # 3) start w/ first character. if second character is same or sort-wise, larger number
        #collect ch, otherwise, end loop. If loop ends, start on next ch as the beginning of the substring
  # 4) end up being a loop within a loop where the outer loop controls the start of
  # each possible substring (a break once a substring of 2 characters or more is provided
  # inner loop controls the iteration that collects the consecutive characters
  # 5) way to compare ch would be through comparing ord numbers. 
  # example: 
    # in outer loop: consecutive_substring = provided_string[leading_index]
    # in inner loop: consecutive_substring[-1] <= provided_string[consecutive_index].ord
        # if true, the provided_string[consecutive_index] is added to consecutive_substring and loop begins again
        # consecutive_index += 1
        # if false, break and enter into outer loop. in outer loop, consecutive_substring is changed to the next character
    
  
  
  