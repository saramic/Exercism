# frozen_string_literal: true

class RotationalCipher
  LOWER_CASE = ('a'..'z').to_a.freeze
  UPPER_CASE = ('A'..'Z').to_a.freeze

  def self.rotate(string, offset)
    string.chars.map { |char| rotate_char(char, offset) }.join
  end

  def self.rotate_char(char, offset)
    return char unless (LOWER_CASE + UPPER_CASE).include?(char)

    alphabet = LOWER_CASE.include?(char) ? LOWER_CASE : UPPER_CASE
    new_index = (alphabet.index(char) + offset) % alphabet.length
    alphabet[new_index]
  end
end
