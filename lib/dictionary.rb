def valid_word?
  @dictionary = ["diamond", "blue", "bluest", "crystal", "quantity", "gorilla", "crystalize"]
  @dictionary.grep(@word_to_test).any?

end

