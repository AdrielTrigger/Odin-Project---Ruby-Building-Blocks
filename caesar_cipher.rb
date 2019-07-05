puts "Type the message you want to cipher:"
word = gets.chomp
puts "Type the cipher shift factor (must be an integer number):"
shift = gets.chomp.to_i

to_encrypt = word.split("")
new_word = ""

upcase = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
lowcase = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

c = 0

# c stands for counter, counts letters of inputed word
# s stands for subcounter, counts alphabet letters

while (c < to_encrypt.length)
  s = 0
  if (to_encrypt[c] == " " or to_encrypt[c] == "," or to_encrypt[c] == ".")
    new_word << to_encrypt[c]
  end
  while (s < upcase.length)
    if (to_encrypt[c] == upcase[s])
      if (s + shift > 25)
        new_shift = (s + shift) % 26
        new_word << upcase[new_shift]
      elsif (s + shift < 0)
        new_shift = (shift + s) % 26
        new_word << upcase[new_shift]
      else
        new_word << upcase[s + shift]
      end
    elsif (to_encrypt[c] == lowcase[s])
      if (s + shift > 25)
        new_shift = (s + shift) % 26
        new_word << lowcase[new_shift]
      elsif (s + shift < 0)
        new_shift = (shift + s) % 26
        new_word << lowcase[new_shift]
      else
        new_word << lowcase[s + shift]
      end
    end
    s += 1
  end
  c += 1
end

puts new_word