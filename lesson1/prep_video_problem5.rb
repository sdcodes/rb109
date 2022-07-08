
#find the length of the longest substring in the given 
# string that is the same in reverse.

#As an example, if the input was "I was racecars that
# go fast", the substring (racecar) length would be 7.

# if the length of the input string is 0, return value must be 0

#example:
# "a" -> 1
# "aab" -> 2
# "abcde" -> 1
# "zzbaabcd" -> 4
# "" -> 0

# input: string
# output: integer - length of longest substring that's a palindrome
# steps:
# 1) need to get all possible substrings 
  # two loops with an index and a group_size variables. within inner loop
  # keep index as 0, group_size starts as 1 and goes until end of string
  # keep track of all substrings created; once at end of string, 
  # move into outer loop, index is increased. 
  # above repeats until index is last ch in string.
# 2) need to find out if substring is a palindrome
  #iterate over collection of substrings. if a palindrome, select
# 3) which is the longest palindrome? 
  #once have collection of palindrome substrings, choose one with largest size
  
  
def longest_palindrome(original_string)
  substrings = []
  index = 0
  loop do 
    group_size = 1
    until group_size + index > original_string.size
      substrings << original_string[index, group_size]
      group_size += 1
    end
    index += 1 
    break if index >= original_string.size
  end 
  palindromes = substrings.select { |ss| ss == ss.reverse }
  (palindromes.max_by {|string| string.size }).size
end 

# OTHER METHOD

def longest_palindrome(original_string)
  index = 0
  substring_arr = []
  palindrome_arr = []
  loop do 
    group_size = 1
    until group_size + index > original_string.size
      substring_arr << original_string[index, group_size]
      group_size += 1
    end 
    index += 1
    break if index == original_string.size 
  end
  substring_arr.each do |substring|
    palindrome_arr << substring if substring == substring.reverse
  end 
  palindrome_arr.max_by {|ss| ss.size}.size
end 

p longest_palindrome("a") #== 1
p longest_palindrome("aa") #== 2
p longest_palindrome("baa") #== 2
p longest_palindrome("aab") #== 2
p longest_palindrome("baabcd") #== 4
p longest_palindrome("baablkj12345432133d") #== 9