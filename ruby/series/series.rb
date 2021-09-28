# frozen_string_literal: true

class Series
  def initialize(input)
    @input = input
  end

  def slices(length)
    raise ArgumentError if length > @input.length

    (0..@input.length - length).map do |index|
      @input.slice(index, length)
    end
  end
end
