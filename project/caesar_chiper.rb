def chiper(str, num)
  upcase = ('A'..'Z').to_a
  lowcase = ('a'..'z').to_a

  result = str.chars.map {
    |alpha| upcase.include?(alpha) ? upcase[(upcase.index(alpha) + num) % 26] :
            lowcase.include?(alpha) ? lowcase[(lowcase.index(alpha) + num) % 26] : alpha }.join
  result
end

puts chiper('What a string', 5)
