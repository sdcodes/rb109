def to_weird_case(string)
  s_array = string.split
  new_array = []
  counter = 2
  new_word = ""

  s_array.each_with_index do |word, index|
    if index != counter
      new_array << word
    else
      word.chars.each_with_index do |letter, inx|
        if inx.odd? 
          new_word << letter.upcase!
        else
          new_word << letter
        end
      end
    counter += 3
    new_array << new_word
    new_word = ""
    end 
  end 
  new_array.join(" ")
end 

# OTHER WAY
def to_weird_case(original_string)
  word_index = 0
 string_arr = original_string.split(" ")
 string_arr.map! do |word|
   word_index += 1
   new_word = ""
    if word_index % 3 == 0
      word.chars.each_with_index do |ch, index|
        if index.odd?
          new_word << ch.upcase
        else 
          new_word << ch
        end
      end 
      new_word
    else 
      word     
    end
  end
  string_arr.join(" ")
end 
      
      
p to_weird_case('Lorem Ipsum is simply dummy text of the printing') == 'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
p to_weird_case( 'It is a long established fact that a reader will be distracted') == 'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
p to_weird_case('aaA bB c') == 'aaA bB c'
p to_weird_case(
  'Miss Mary Poppins word is supercalifragilisticexpialidocious') ==
  'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'


# Write a method named to_weird_case that accepts a string, and
# returns the same sequence of characters with every 2nd character
# in every third word converted to uppercase. Other characters
# should remain the same. 
# input: string
# return: changed string - 