class GrammarStats
  def initialize
    @true = 0
    @false = 0
  
  end

  def check(text) # text is a string
    if text.match?(/\A[A-Z]/) && text.end_with?(".", "?", "!")
      @true += 1 
      true 
    else 
      @false += 1 
      false 
    end 
  end

  def percentage_good
    percentage_calculation = "#{(@true.to_f/(@false.to_f + @true.to_f) * 100).ceil}"
    return percentage_calculation.to_i
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
  end
  
  
end