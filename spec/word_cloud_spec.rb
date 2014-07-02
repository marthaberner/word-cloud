require 'rspec'
require 'word_cloud'
require 'json'

describe WordCloud do
  before do
    @buzzword_hash = {
      "Ila Huels" => [
        "OPTIMIZE WEB-ENABLED SUPPLY-CHAINS",
        "brand sexy channels"
      ],
      "Cristopher Feest" => [
        "brand sexy channels"
      ]
    }
  end

  it 'creates a hash with the buzzwords as keys, a count of times used, and who used the word' do
    word_list = WordCloud.new(@buzzword_hash)

    expected = {
      "optimize" => {:count => 1, :people => ["Ila Huels"]},
      "web-enabled" => {:count => 1, :people => ["Ila Huels"]},
      "supply-chains" => {:count => 1, :people => ["Ila Huels"]},
      "brand" => {:count => 2, :people => ["Ila Huels", "Cristopher Feest"]},
      "sexy" => {:count => 2, :people => ["Ila Huels", "Cristopher Feest"]},
      "channels" => {:count => 2, :people => ["Ila Huels", "Cristopher Feest"]}
    }

    expect(word_list.buzzify).to eq(expected)
  end
end