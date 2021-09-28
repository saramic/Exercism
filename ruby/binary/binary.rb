# Binary implmenetation for exercism
class Binary
  class << self
    def to_decimal(input)
      input.chars.reverse.each_with_index.map do |char, index|
        raise ArgumentError unless %w[0 1].include?(char)
        char.to_i.zero? ? 0 : (2**index)**1
      end.sum
    end
  end
end

module BookKeeping
  VERSION = 3
end
