class Gigasecond
  GIGASECOND = 1_000_000_000

  class << self
    def from(point_in_time)
      point_in_time + GIGASECOND
    end
  end
end

module BookKeeping
  VERSION = 6
end
