# Bob exercism
class Bob
  class << self
    RESPONSES = {
      'Whoa, chill out!'    => { match: /[A-Z]/,  not_match: /[a-z]/ },
      'Sure.'               => { match: /\?\s*$/, not_match: /\?\n/ },
      'Fine. Be that way!'  => { match: /^\s*$/,  not_match: /\w/ },
    }.freeze

    def hey(remark)
      RESPONSES.find do |response, matches|
        remark[matches[:match]] && !remark[matches[:not_match]]
      end&.first || 'Whatever.'
    end
  end
end

module BookKeeping
  VERSION = 1
end
