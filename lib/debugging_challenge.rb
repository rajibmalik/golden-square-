def get_most_common_letter(text)
  counter = Hash.new(0)
  #p "1: #{counter}"
  text.chars.each do |char|
    #p "2: #{char}"
    counter[char] +=1 
    #p "3: #{counter[char] +=1}"
  end
  counter.to_a.sort_by { |k, v| -v }[1][0]
  #p "4 #{counter.to_a.sort_by { | k, v | v  }}"
  #p "5 #{counter.to_a.sort_by { | k, v | -v  }}"
  #p "6 #{counter.to_a.sort_by { |k, v| -v }[1][0]}"
end

puts get_most_common_letter("the roof, the roof, the roof is on fire!")

# Intended output:
# 
# > get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"
