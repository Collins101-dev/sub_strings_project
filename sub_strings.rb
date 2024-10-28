dictionary = ["below","down","go","going","horn","how","howdy", "hit", "it","i","low","own","part","partner","sit"]

# define the method 
def substrings(word, dictionary)
  word = word.downcase
  result = Hash.new(0)

  dictionary.each do |substring|
    #ensure substring is normalized i.e. is in downcase
    normalized_substring = substring.downcase
    #count the occurances of the substring and store in variable count
    count = word.scan(normalized_substring).size
    #if found store count in the result hash
    result[normalized_substring] += count if count > 0 
  end
  result
end

puts "Enter word to be checked for substrings: "
word = gets.chomp
results = substrings(word,dictionary)

puts results