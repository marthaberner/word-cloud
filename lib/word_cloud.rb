class WordCloud

  def initialize(buzzword_hash)
    @buzzword_hash = buzzword_hash
  end

  def buzzify
    result = Hash.new
    i = 1
    @buzzword_hash.each do |person, words|
      words.each do |word|
        word_array = word.split(" ")
        word_array.each do |key_word|
          key = key_word.downcase
          if result[key]
            result[key] = {:people => result[key][:people] << person}
            i = result[key][:people].length
            result[key][:count] = i
          else
            result[key] = {:count => i, :people => [person]}
          end
        end
      end
    end
    result
  end
end