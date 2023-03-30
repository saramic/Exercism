# frozen_string_literal: true

class Diamond
  LETTERS = ('A'..'Z').to_a.freeze

  def initialize(letter)
    @letter = letter
  end

  def to_s
    reverse_letters = []
    size = LETTERS.index(@letter)
    (0..size).map do |index|
      offset = size - index
      inset = (index * 2) - 1
      letter_string = if LETTERS[index] == 'A'
                        (' ' * offset) + LETTERS[index] + (' ' * offset)
                      else
                        (' ' * offset) + LETTERS[index] + (' ' * inset) + LETTERS[index] + (' ' * offset)
                      end
      reverse_letters << letter_string
      letter_string
    end.then do |output|
      reverse_letters = reverse_letters.tap(&:pop).reverse
      (output + reverse_letters).join("\n")
    end + "\n"
  end

  def self.make_diamond(letter) = new(letter).to_s
end
