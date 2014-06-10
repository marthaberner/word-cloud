require 'rspec'
require 'word_cloud'

describe WordCloud do
  before do
    @quotes_hash = {
      "Ila Huels" => [
      "OPTIMIZE WEB-ENABLED SUPPLY-CHAINS",
      "brand sexy channels",
    ],
      "Cristopher Feest" => [
      "BENCHMARK CROSS-PLATFORM PARTNERSHIPS",
      "brand sexy channels",
    ]
    }
  end
  it 'creates a hash of buzz words as keys and empty hash as values' do
    word_list = WordCloud.new(@quotes_hash)

    expected = {
      "OPTIMIZE" => {},
      "WEB-ENABLED" => {},
      "SUPPLY-CHAINS" => {},
      "brand" => {},
      "sexy" => {},
      "channels" => {},
      "BENCHMARK" => {},
      "CROSS-PLATFORM" => {},
      "PARTNERSHIPS" => {}
    }

    expect(word_list.buzzify).to eq(expected)


    #bring in some test data
    #turn buzz words into keys
    #turn names into values
    #count how many times a word is said

  end
end