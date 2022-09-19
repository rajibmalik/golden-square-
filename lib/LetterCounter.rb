class LetterCounter
  def initialize(text)
    @text = text
  end

  def calculate_most_common()
    counter = Hash.new(0) # changed from 1 to 0 
    # binding.irb
    most_common = nil #
    most_common_count = 1 #
    @text.chars.each do |char| 
      #binding.irb #=> Returns each letter of input text
      next unless is_letter?(char) 
      #binding.irb
      counter[char] = (counter[char] || 1) + 1 
      #binding.irb
      if counter[char] > most_common_count
        #binding.irb
        most_common = char
        most_common_count = counter[char] # changed += to =, this was adding +1 to the counter 
        #binding.irb 
      end
    end
    return [most_common_count, most_common]
  end

  private

  def is_letter?(letter)
    return letter =~ /[a-z]/i
  end
end

counter = LetterCounter.new("Digital Punk")
p counter.calculate_most_common

# Actual output: 
# [3, "D"]

# Intended output:
# [2, "i"]