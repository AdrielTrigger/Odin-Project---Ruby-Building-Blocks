dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings (word, dictionary)
  word = word.downcase.split(" ")
  w_count = 0
  result = {}

  while (w_count < word.length)
    counter = 0
    while (counter < dictionary.length)
      if (word[w_count].length >= dictionary[counter].length)
        w_letter = 0
        d_letter = 0
        b_word = word[w_count]
        d_word = dictionary[counter]

        while (d_letter < d_word.length and w_letter <= b_word.length - d_word.length)
          while (w_letter < b_word.length)
            if (b_word[w_letter] == d_word[d_letter])
              w_letter += 1
              d_letter += 1
            else
              w_letter += 1
            end
          end
          if (d_letter == d_word.length)
            if (result[d_word] == nil)
              result[d_word] = 1
            else
              result[d_word] += 1
            end
          end
        end
      end
      counter += 1
    end
    w_count += 1
  end
    
puts result
end

substrings("Howdy partner, sit down! How's it going?", dictionary)