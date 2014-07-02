require './lib/word_cloud'
require 'json'

file = File.read('./data/quotes.json')
data = JSON.parse(file)

word_cloud = WordCloud.new(data)

word_cloud.buzzify.each_pair do |word, word_data|
  people = ""
  word_data[:people].each do |person|
    people += "#{person}, "
  end
  p "The word #{word} was used #{word_data[:count]} times by #{people.chomp(', ')}"
end