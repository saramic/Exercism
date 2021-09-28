module Complement
  class << self
    COMPLEMENT = {
      'G' => 'C',
      'C' => 'G',
      'T' => 'A',
      'A' => 'U',
    }

    def of_dna(string)
      string.chars.map(&COMPLEMENT.method(:fetch)).join
    rescue KeyError
      return ''
    end
  end
end

module BookKeeping
  VERSION = 4
end
