def check_grammar(text)
  fail "Not a sentence." if text.empty?
  is_first_letter_cap = text[0] == text[0].upcase
  last_character_is_fstop = [".", "!", "?"].include? text[-1]
  if is_first_letter_cap && last_character_is_fstop
    return true
  else
    return false
  end
end