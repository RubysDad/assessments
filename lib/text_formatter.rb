class TextFormatter
  def call(words)
    words.split("\n").collect do |w|
      if w.length > 80
        w.gsub(/(.{1,80})(\s+|$)/, "\\1\n").rstrip
      else
        w
      end
    end * "\n"
  end
end

words = File.open('lib/word_wrap.txt')
text = TextFormatter.new
words.each do |w|
  puts text.call(w)
end
