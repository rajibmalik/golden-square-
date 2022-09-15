def grammar_fix(sentence)
  fail "No text was given" if sentence == "" 
  if sentence[0] == sentence[0].upcase && sentence.end_with?(".", "?", "!")
    return true 
  else 
    return false 
  end 
end 