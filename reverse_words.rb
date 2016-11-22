class String
  def reverse_words
    word_regex = /[a-zA-Z0-9\-_]+/
    words = self.scan(word_regex)

    i = -1
    other = self.dup.gsub(word_regex) do |word|
      i += 1
      "#!PLACEHOLDER-#{i}!#"
    end

    words.reverse.each_with_index do |word, index|
      other.gsub!("#!PLACEHOLDER-#{index}!#", word)
    end

    other
  end
end
