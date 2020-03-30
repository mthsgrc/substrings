def substrings(phrase, dictionary)
  words = phrase.downcase.split
  count_words = Hash.new(0)

  # p words
  words.each do | word |
    dictionary.each do | dic_word |
      if word.include?(dic_word)
        count_words[dic_word] += 1
      end

    end
  end
  count_words = count_words.sort.to_h
  p count_words
end
dictionary = ["ab","as","below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("below as as above ", dictionary)
substrings("Howdy partner, sit down! How's it going? How!", dictionary)
