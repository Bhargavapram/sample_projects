def substrings dictionary
  #return a hash listing each substring that was foundin the original string and how many times
  puts "Enter a sentence: "
  sentence = gets.chomp

  count_hash = {}
  sentence.downcase!
  dictionary.each do |substr|
    count = sentence.scan(substr).length
    count_hash[substr] = count if count > 0
  end
  
  puts count_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings(dictionary)

# scan goes through the word every time the program is called, so it's O(n)?