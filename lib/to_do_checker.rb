def to_do_checker(text)
  fail "No text was given" if text.empty?
  text.include?("#TODO") ? true : false 
end 




