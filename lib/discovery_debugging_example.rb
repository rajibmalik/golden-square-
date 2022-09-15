def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars) # "'a'...'z'"" => "'a'..'z'""
  ciphertext_chars = plaintext.chars.map do |char|        
    (65 + cipher.find_index(char)).chr # Initial failure in the code, z has nil index value
  end
  return ciphertext_chars.join
end

def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  plaintext_chars = ciphertext.chars.map do |char|
   out_char = cipher[char.ord - 65] # changed from "'65 - char.ord' resulting in -4"
                                    # changing the order results in +4 resulting in intended index
  end
  return plaintext_chars.join
end

p encode("theswiftfoxjumpedoverthelazydog", "secretkey")
p decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")

# Intended output:
#
# > encode("theswiftfoxjumpedoverthelazydog", "secretkey")
# => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
#
# > decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
# => "theswiftfoxjumpedoverthelazydog"