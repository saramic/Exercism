# run length encoding for non numeric character streams
class RunLengthEncoding
  class << self
    def encode(input)
      last = nil
      count = 0
      input.chars.each_with_index.each_with_object([]) do |(char, index), acc|
        if char == last
          count += 1
        else
          acc << count.to_s if count > 1
          acc << last
          count = 1
        end
        if index == input.chars.length - 1
          acc << count.to_s if count > 1
          acc << char
        end
        last = char
      end.join
    end

    def decode(input)
      input
        .scan(
        %r{
          (?<multiplier>\d*)
          (?<character>\D)
          (?<characters>\D*)
        }x)
        .each_with_object([]) do |(multiplier, character, characters), acc|
        multiplier = multiplier.empty? ? 1 : multiplier.to_i
        acc << (character * multiplier)
        acc << characters
      end.join
    end
  end
end

module BookKeeping
  VERSION = 3
end
