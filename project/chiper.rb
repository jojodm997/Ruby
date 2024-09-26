def caesar_cipher(str, num)
  upcase = ("A".."Z").to_a
  lowcase = ("a".."z").to_a
  encrypted = ""

  str.each_char do |char|
    if upcase.include?(char)
      new_index = (upcase.index(char) + num) % 26
      encrypted += upcase[new_index]

    elsif lowcase.include?(char)
      new_index = (lowcase.index(char) + num) % 26
      encrypted += lowcase[new_index]

    else
      encrypted += char

    end
  end

  encrypted
end

puts caesar_cipher("What a string!", 5)

