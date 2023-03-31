# frozen_string_literal: true

class IsbnVerifier
  def self.valid?(string)
    digits = valid_digits(string)
    return false unless digits.length == 10

    (sum_digits_with_position(digits) % 11).zero?
  end

  def self.valid_digits(string)
    string
      .chars
      .reject(&method(:hyphen?))
      .each_with_index
      .map(&method(:convert_last_x))
      .then { _1.length != 10 ? [] : _1 } # NOTE fail if there are letters at this point
      .select(&method(:digit?))
      .map(&:to_i)
  end

  def self.hyphen?(char) = char == '-'
  def self.digit?(char) = char =~ /\d+/
  def self.convert_last_x(char, index) = index == 9 && char == 'X' ? '10' : char

  def self.sum_digits_with_position(digits)
    digits.reverse.each_with_index.map do |digit, index|
      digit * (index + 1)
    end.sum
  end
end
