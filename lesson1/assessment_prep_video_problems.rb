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

p repeated_substring_pattern("abab") == true 
p repeated_substring_pattern("aba") == false
p repeated_substring_pattern("aabaaba") == false
p repeated_substring_pattern("abaababaab") == true
p repeated_substring_pattern("abcabcabcabc") == true

# ----- 

# You have to create a method taht takes a positive integer
# number and returns the next bigger number formed by the same
# digits

# 12 ==> 21
# 513 ==> 531
#2017 ==> 2071
#if no bigger number can be composed using those digits.
# return -1

# 9 ==> -1
# 111 ==> -1
# 531 ==> -1

p next_bigger_num(9) == -1
p next_bigger_num(12) == 21
p next_bigger_num(513) == 531
p next_bigger_num(2017) == 2071
p next_bigger_num(111) == -1
p next_bigger_num(531) == -1
p next_bigger_num(123456789) == 123456798

#---- 


# The maximum sum subarray problem consists in finding
# the maximum sum of a contiguous subsequence in an array
# of integers

#maxSequence [ -2, 1, -3, 4, -1, 2, 1, -5, 5]
# -- should be 6: [4, -1, 2, 1]
# easy case is when the array is made up of only positive
# numbers and the maximum sum is the sum of the whole array
#if the array is made up of only negative numbers
# return 0 instead

# empty array is considered to have zero greatest sum. 
#note taht the empty array is also a vlid subarray

p max_sequence([]) == 0
p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
p max_sequence([11]) == 11
p max_sequence([-32]) == 0
p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12


# ---- 


#given 2 strings, your job is to find out if there is
#a substring that appears in both strings. You will 
# return true if you find a substring that appears
#in both strings, or false if you do not. 
# we only care about substrings taht are longer 
# than one letter long.

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

# ---- 

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

p longest_palindrome("a") == 1
p longest_palindrome("aa") == 2
p longest_palindrome("baa") == 2
p longest_palindrome("aab") == 2
p longest_palindrome("baabcd") == 4
p longest_palindrome("baablkj12345432133d") == 9



# ------ 

# You are going to be given an array of integers. Your
# job is to take taht array and find an index N where
# the sum of the integers to the left of N is equal to 
# the sum of the integers to teh right of N. If there is 
# no index that would make this happen, return -1.

# for example:

# let's say you are given the array [1, 2, 3, 4, 3, 2, 1]
#your method will return the index 3, because at
# the 3rd position of the array, the sum of left side
# of the index [1, 2, 3,] and the sum of the right side
#3, 2, 1] both equal 6.

#another one:
# you are given teh array [20, 10, -80, 10, 10, 15, 35]
# at index 0 the left side is []
# the right side is [10, -80, 10, 10, 15, 35]
# they both are equal to 0 when added. (empty arrays are
# equal to 0 in this problem)
# idnex 0 is the place where the left side and right side are equal

p find_even_index([1, 2, 3, 4, 3, 2, 1]) == 3
p find_even_index([1, 100, 50, -51, 1, 1,]) == 1
p find_even_index([1, 2, 3, 4, 5, 6]) == -1
p find_even_index([20, 10, 30, 10, 10, 15, 35]) == 3
p find_even_index([20, 10, -80, 10, 10, 15, 35]) == 0
p find_even_index([10, -80, 10, 10, 15, 35, 20]) == 6
p find_even_index([-1, -2, -3, -4, -3, -2, -1]) == 3

