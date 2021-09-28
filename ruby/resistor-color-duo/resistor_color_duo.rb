# frozen_string_literal: true

#:nodoc:
class ResistorColorDuo
  COLOUR_VALUES = {
    black: 0,
    brown: 1,
    red: 2,
    orange: 3,
    yellow: 4,
    green: 5,
    blue: 6,
    violet: 7,
    grey: 8
  }.freeze
  def self.value(colours)
    colours.first(2).reverse.each_with_index.inject(
      0
    ) do |value, (colour, index)|
      value + (10**index * COLOUR_VALUES[colour.to_sym])
    end
  end
end
