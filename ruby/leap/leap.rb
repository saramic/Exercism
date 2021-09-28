# Leap implementation
class Year
  class << self
    def leap?(year)
      (year % 400).zero? || ((year % 4).zero? && !(year % 100).zero?)
    end
  end
end

module BookKeeping
  VERSION = 3
end
