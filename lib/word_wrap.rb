class WordWrap
  def initialize(words)
    @words = words
  end

  # def wrap
  #   words = @words.each do |w|
  #     if w >=
  #       puts "/n"
  #     end
  #     puts w
  #   end
  # end
end

words = File.open('lib/word_wrap.txt')
words.each do |w|
  if w.length >= 80
    puts '/n'
  end
  puts w
end
# word_wrap = WordWrap.new(words)
# word_wrap.wrap