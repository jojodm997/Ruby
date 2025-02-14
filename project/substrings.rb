dictionary = ["below", "down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(str, dict)
  dict.reduce(Hash.new(0)) do |result, count|
    if str.include?(count)
      result[count] += 1
    else
      result
    end
    result
  end  
end

p substrings("Howdy partner, sit down! How's it going?", dictionary)
