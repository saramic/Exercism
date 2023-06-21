class House
  class << self
    SUBJECTS = [
      nil,
      "house that Jack built",
      "malt",
      "rat",
      "cat",
      "dog",
      "cow with the crumpled horn",
      "maiden all forlorn",
      "man all tattered and torn",
      "priest all shaven and shorn",
      "rooster that crowed in the morn",
      "farmer sowing his corn",
      "horse and the hound and the horn"
    ]
    ACTIONS = [
      nil,
      nil,
      "lay in",
      "ate",
      "killed",
      "worried",
      "tossed",
      "milked",
      "kissed",
      "married",
      "woke",
      "kept",
      "belonged to"
    ]

    def verse(number)
      (number..1).step(-1).map do |index|
        pre_text = index == number ? "This is the" : "that #{ACTIONS[index + 1]} the"
        "#{pre_text} #{SUBJECTS[index]}"
      end.join("\n") + ".\n\n"
    end

    def recite
      (1..12).map(&method(:verse)).reduce(:+).chomp
    end
  end
end
