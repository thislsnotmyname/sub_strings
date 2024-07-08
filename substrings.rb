DICTIONARY = %w[below down go going horn how howdy it i low own part partner sit]
def substrings(string, dict)
  string_split = string.downcase.split("")
  sub_amount = Hash.new(0)
  dict.each do |word|
    range_end = word.length - 1
    string_split.each_index do |idx|
      sub_amount[word] += 1 if string_split[idx..range_end].reduce(:+) == word
      range_end += 1
      break if string_split[idx..range_end].reduce(:+).length < word.length
    end
  end
  sub_amount
end
print "Please input a string to be tested against the dictionary: "
string = gets.chomp.to_s
puts "The string: \"" << string << "\" contains these substrings:"
puts substrings(string, DICTIONARY)
