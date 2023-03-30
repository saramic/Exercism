# frozen_string_literal: true

class Isogram
  def self.isogram?(input) = valid_chars(input).count == valid_chars(input).uniq.count

  def self.valid_chars(str) = str.chars.map(&:downcase).reject { |c| ['-', ' '].include? c }
end
