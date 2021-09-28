class Integer
  ROMAN_SPECIAL = {
    4    => 'IV',
    9    => 'IX',
    40   => 'XL',
    90   => 'XC',
    400  => 'CD',
    900  => 'CM',
  }
  ROMAN = {
    1    => 'I',
    5    => 'V',
    10   => 'X',
    50   => 'L',
    100  => 'C',
    500  => 'D',
    1000 => 'M',
  }.freeze

  def to_roman
    number = self.clone
    last_key = nil
    ROMAN.keys.sort.reverse.each_with_index.inject([]) do |output, (key, index)|
      a = ROMAN.keys.sort.reverse
      next_key = a.slice(a.index(key) - 1, 1).first
      if next_key && (key + next_key <= number)
        #next_key = ROMAN.keys.sort.reverse.each_with_index.inject([]) do |output, (key, index)|
        #if (index % 2).zero?
        output << ROMAN[key] << ROMAN[next_key]
        number -= key + next_key
        #else
          #output << ROMAN[key] << ROMAN[last_key]
        #end
      else
        loop do
          break if key > number
          output << ROMAN[key]
          number -= key
        end
      end
      last_key = key
      output
    end.join
  end
end

module BookKeeping
  VERSION = 2
end

