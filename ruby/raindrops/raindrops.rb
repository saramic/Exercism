# Raindrops a bit like fizz buzz
class Raindrops
  SOUND = {
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong'
  }.freeze

  class << self
    def convert(number)
      output = SOUND
               .find_all { |key, _| (number % key).zero? }
               .inject([]) { |ary, (_, value)| ary << value }
      output.count > 0 ? output.join : number.to_s
    end
  end
end

module BookKeeping
  VERSION = 3
end
