dictionary = ["below", "down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
word = "Howdy partner, sit down! How's it going?"

def substrings(str, dict)
  dict.reduce(Hash.new(0)) do |result, count|
    if str.downcase.include?(count)
      result[count] += 1
    else
      result
    end
    result
  end  
end

puts substrings(word, dictionary)
