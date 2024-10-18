dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(str, dict)
  substrings = Hash.new(0)
  input = str.split

  input.each do |userWord|
    dict.each do |word|
      substrings[word] += 1 if userWord.downcase.include?(word)
    end
  end

  return substrings
end
result = substrings("Howdy partner, sit down! How's it going?", dictionary) 
puts result.inspect #inspect
