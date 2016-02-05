require 'nokogiri'

WORD = ARGV[0]
POEM = Nokogiri::XML(File.open(ARGV[1]))

def valid_word? (word)
  term = word.to_s 
  re = /[a-zA-Z]/
  if re.match(term) != nil && word != ""
    term
  end
end  

def interweave_arrays (a, b)
  if a.length >= b.length
    a.zip(b)
  else 
    b.zip(a).map(&:reverse)
  end.flatten.compact    
end  

def word_search (word)
  selected_text = POEM.xpath("//l[contains(text(), '#{valid_word?(word.downcase)}')]")
  selected_text_capitalized = POEM.xpath("//l[contains(text(), '#{valid_word?(word.capitalize)}')]")

  zipped_array = interweave_arrays(selected_text, selected_text_capitalized)

  if zipped_array.empty?
    p "No entries"
    return 
  else   
    zipped_array.sort.each do |line|
      puts "#{line['n']} #{line.text.strip}"
    end
  end
end

def find_word_in_poem  
  if !WORD
    p "No word entered"
    return
  end
  word_search(WORD)
end

find_word_in_poem



