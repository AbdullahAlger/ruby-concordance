require_relative './app.rb'

RSpec.describe "word finder app" do 

  context "valid_word?" do
    it "should check whether search term is a word" do 
      word = "monkey"
      expect(valid_word?(word)).to eq "monkey"
    end

    xit "should return a string when a word has not been entered or is a number" do 
      number = 1
      empty_s = ""
      expect(valid_word?(number)).to eq "You need to enter a word!"
      expect(valid_word?(empty_s)).to eq "You need to enter a word!"
    end
  end  

  context "find_word_in_poem" do

    xit "should check whether the word exists in the search and return 'No entries' if it's not" do 
      expect(find_word_in_poem).to eq "No word entered"
    end

    xit "should print the number of entries found" do
    end
  end

end
