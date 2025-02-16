dictionary = %w[below down go going horn how howdy it i low own part partner sit]
word = "Howdy partner, sit down! How's it going?".downcase

def substrings(str, dict)
  word_count = Hash.new(0)

  str.split.each do |sentence|
    dict.each do |word|
      word_count[word] += 1 if sentence.include?(word)
    end
  end
  word_count
end

puts substrings(word, dictionary)
