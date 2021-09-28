class Pangram
  class << self
    def pangram?(phrase)
      phrase.chars.inject(('a'..'z').to_a) do |alphabet, char|
        alphabet.delete(char.downcase)
        alphabet
      end == []
    end
  end
end

module BookKeeping
  VERSION = 6
end
