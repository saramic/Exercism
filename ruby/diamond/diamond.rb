# frozen_string_literal: true

class Diamond
  LETTERS = ('A'..'Z').to_a.freeze

  def initialize(letter)
    @letter = letter
    @size = LETTERS.index(@letter) + 1
  end

  def to_s
    output = (0..(@size - 1)).map(&method(:create_line))
    output += output.clone.tap(&:pop).reverse
    "#{output.join("\n")}\n"
  end

  def create_line(index)
    line = ' ' * ((@size * 2) - 1)
    line[(@size - index) - 1] = LETTERS[index]
    line[(line.length - 1 - (@size - index)) + 1] = LETTERS[index]
    line
  end

  def self.make_diamond(letter) = new(letter).to_s
end
