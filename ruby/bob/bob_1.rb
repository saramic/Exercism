# Bob exercism
class Bob
  class << self
    def hey(remark)
      shout_response(remark) ||
        question_response(remark) ||
        slience_response(remark) ||
        'Whatever.'
    end

    def shout_response(remark)
      'Whoa, chill out!' if /[A-Z]/.match(remark) && !/[a-z]/.match(remark)
    end

    def question_response(remark)
      'Sure.' if /\?\s*$/.match(remark) && !/\?\n/.match(remark)
    end

    def slience_response(remark)
      'Fine. Be that way!' if remark[/^\s*$/] && !remark[/\w/]
    end
  end
end

module BookKeeping
  VERSION = 1
end
