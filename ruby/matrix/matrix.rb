# frozen_string_literal: true

class Matrix
  attr_accessor :rows

  def initialize(string_matrix)
    @rows = string_to_rows(string_matrix)
  end

  def columns
    @columns ||= rows.transpose
  end

  private

  def string_to_rows(string_matrix)
    string_matrix.lines.map { |row_string| row_string.split.map(&:to_i) }
  end
end
